Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6E37C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657101412;
	h=To:Subject:From:Message-Id:Date;
	bh=POsFC+Iu+caqwkRiUiNQreI/xCrwVFKsG97XaetFEgA=;
	b=ei6Seehha5iWrHC3S/j5sjOxgeOA3+bSGGmWvXHgD9Gqpd8tKg/PiV8s+zdlfc3N
	tzWcAyUd/MPw9p/z2KWceSvTfgutDYdDQ39uwUYrgbxwEKMZ5j9JUPrgL3F53a1JLCq
	rXyQZWOcE1KJFv7n36+1Pf/oGEefCWXcqrjHUB5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657101412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POsFC+Iu+caqwkRiUiNQreI/xCrwVFKsG97XaetFEgA=;
	b=OgvzA4rFiyn9GC6ECDuzfW3ceW1a0/IxEJum92hU0UzJswsq7A/lN9od6NepeMwt
	DHugwWmGz8pSbX3n39yPCm7nhmfSu9iKXuYBLtsmUZ0vhHMA47KnmdhHPrFzJ7TMrG3
	B/E8yd4X2nBd4c9aSrjsDnQkLOxsRcIA3IHiIjAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2f0e7b7-65bfc027-c869-44c2-9c42-0429e2af5077-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f524c2ced2dffd84fdd602cab201139750fdaf900859eb24945ddf281b80c415
Date: Wed, 6 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657101412
