//
//  LocationPreviewView.swift
//  MindMapApp
//
//  Created by MM on 07.09.2022.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0.0) {
            
            VStack(alignment: .leading, spacing: 16.0) {
                imageView
                textView
            }
            
            VStack(spacing: 8.0) {
                buttonMore
                buttonNext
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
            )
        .cornerRadius(10)

    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationViewModel())
            
    }
}

extension LocationPreviewView {
    private var imageView: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(.white)
        .cornerRadius(10)
    }
    
    private var textView: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    private var buttonMore: some View {
        Button {
            vm.sheetLocation = location
        } label: {
            Text("More")
                .font(.headline)
                .fontWeight(.bold)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var buttonNext: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Следующее")
                .font(.headline)
                .fontWeight(.bold)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
    }
    
    
}
