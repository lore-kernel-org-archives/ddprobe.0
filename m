Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25817B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 03:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652153159;
	h=To:Subject:From:Message-Id:Date;
	bh=PCU/dtVBAR2KZSHCELOLTAQEMbGiqW4OKQr69j+HhX8=;
	b=Zy46SicbxBAmsA5o8Ei00WGqbshnB+8xKhQs5uSbJJe9bPulRyK/PdVdEaCxhdn+
	HLrQCkMjtmRsI9zjqhJ506BixayPnxWImT2Ff8leY7XAR1/NMZfXo7QrAx1S1U+JNZ9
	uZ3Bwwe925Bu6M93TKK5wtS3pMyo2axnvxc/Y0QU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652153159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PCU/dtVBAR2KZSHCELOLTAQEMbGiqW4OKQr69j+HhX8=;
	b=cYJK3JALVmCyV3mvcZHfHIfbJFq+6hWYCDcwX/7006wrVQxnPrpA3IpGQqm2v/7d
	Y/3vzyQ79RiYOtjD6/6qKYKdMtp+xLY2/x3RlO9dvBiKphxOaa1mh8PnU5Nya5QOyQr
	liv5jA5KKoiJOMGBl5s6F1ko0p/lahQrR1xxtJFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac008e4d-1df78caa-e918-4290-86f0-ffcfefc19a4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a3cde7ac334ef01caa71fa5068e06c7ee1b89895da38f58f6e6fc79badae9fb
Date: Tue, 10 May 2022 03:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652153159
