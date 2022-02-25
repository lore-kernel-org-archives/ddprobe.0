Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCC11FDA
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645794385;
	h=To:Subject:From:Message-Id:Date;
	bh=snwlBorX7JVX7+yQEp6TAACh5QDu9kegh/127CFiBQg=;
	b=XcjQ64sjyHcnMoTSYCTTvZaYBXxMxHpyiHwj7fOt8WxPPUPLft75PEr4LG3mj0ip
	2WmvJixKADnJgPoUYtR2KNS4vF9uAkLk2+ZR3N31cxp2wKssGJmR7gNFBtD7BucUIPD
	1o2t/LhbdUMyUfd0W+X0ODjvu3xGYwALIx2fN48w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645794385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snwlBorX7JVX7+yQEp6TAACh5QDu9kegh/127CFiBQg=;
	b=JT0LUXZrFdNoBABiU3wXh9VzryqbzcdsfZ1ixzdHBg2YgBulvcUwt4ROXjgq+wht
	bTHgVz3eLvtmGCtrNSLAJVeIrQKhRwlqQzF+RVwrajDU6iKMwiEXjyAZadLgDhVWigW
	oX+eHLK6xyu7P/CrXYWWy6lcd45vxsN1RChXZYLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30fd5b8b-8aa1e00f-def1-40b5-a910-90816581748f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49626fd61f83d348a790fcd57b84a0ae4161f624d553293cca8d2cc1def8125a
Date: Fri, 25 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645794384
