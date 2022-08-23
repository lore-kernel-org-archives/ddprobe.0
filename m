Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703792913
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661269852;
	h=To:Subject:From:Message-Id:Date;
	bh=tKb3jilhmtfPxbHjsjA6eHdpMqW5xa103xXb9ywKquM=;
	b=dg2vGmNLmRFFw3Tz6AwejAKogvwShNrlHz1mj4dhtlSPvqCMCZLGO13ECc0BU52T
	OrcenErige2vmFNGNMImWjnQUv+hc7cThV+hiI/ipfaHqAncpn7s0R0eZKE2+OCbgbp
	k5+CGwL7BnxkRf5M9TmntjfWraz2eP0r74Xnyckc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661269852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tKb3jilhmtfPxbHjsjA6eHdpMqW5xa103xXb9ywKquM=;
	b=aqpIZkiJSDI9FBxep057+JQppT6uCG5UldQYqdyViSp2n7gdcFqfWZPkcN8UTbkl
	OulBEhApjRRQvZWsvbMvlDJz1vp+Ja7M6ADfhSjf8dIwDS0XyzuQhH6oQoHkl637QYh
	+Zja5R/JGof9CM2Kh9+t1YbJuaERQ0eVkIafx1Xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb664176-7f4d6dfb-67d8-4628-81be-6eeb409baf06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f0938f05c21e7b4cd49f0e5a757f4169c1305d0aa26de9f28d8d44412ebf17c
Date: Tue, 23 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661269852
