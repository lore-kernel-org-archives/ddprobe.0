Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8C27E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646958384;
	h=To:Subject:From:Message-Id:Date;
	bh=uKHVQVGby+Ri/0pNYKxlxyvbRH/z5q7aZEpSEwhQZhs=;
	b=IxuVp0EiUmXgn4eAXLxuw9TnJ1Cch36i7IteyCQgRBDCJE18DudOM2nn5bEMoqgX
	1zGg7aJgtY87eVepLDAa0bKHwg+ekDE6IcdgMtitFo5EmL1Khsrd8RjQQzzfmIDxal3
	GudxoWFO0PKC0+0x85n+2dZ86FkBm/i/NsBzH4R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646958384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uKHVQVGby+Ri/0pNYKxlxyvbRH/z5q7aZEpSEwhQZhs=;
	b=G007eRnK5O2/38t9QmtnUnA9+hzjPCIoKQpr/I2pgJ3p5TF4syh4ie3ZGSKEhCv9
	R2wgGDBWze+AXccCR1A3SOv44k1bvR1Fnh4ODRBFobZC2DCco8bVNvFu1q1taY1PC/Z
	bHJoCd4+fmJuomTDcsHuMi05lWtkdlgiief6nGGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f765e96cd-3c9bd155-ec28-41b7-a98e-91ea216be814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 816d3d36c303419ef1d020e4809b73d118208a38ef3be6d1af3c332fe6f9acd0
Date: Fri, 11 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646958384
