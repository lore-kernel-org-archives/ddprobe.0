Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074B4690
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661118652;
	h=To:Subject:From:Message-Id:Date;
	bh=sfxMMOgmf9zQGSu30mcOVBu2FAXHKTMOv6Yc1wQMqvk=;
	b=etKZfLcPiHBrYpg7Zscydx/Ejv5UrIpLHi6jBKLVAqkffxID1MFY0AYITgOCuXIl
	QdMHIF5rDJHELLJ8REetsupthu8uaYsYowPwtEXOzk/ysctb/yvdVWPOKI6zxsncs2d
	18vDb46VA7KYF3+k6caP/8DoLSB67WeIMjwCjUGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661118652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sfxMMOgmf9zQGSu30mcOVBu2FAXHKTMOv6Yc1wQMqvk=;
	b=UHRKRCLSsMJ86Hvpdz2Yn9FptZQnqrjCIAaIwIGDHt1skt1KJPh1wH+F5szVyG4n
	vC2Znxbf2fkUtuz4eO2UXbM9fjwgAqdOJeuaETNQkFqneQ3oWNctdRl0cK8ASDjCn43
	E53l8MD54fEmbtrQMeC1B3iLnA4DAiq3bHoIG6Io=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2632087-e7a85575-87a0-41c5-9e11-3b192c1d79fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d825975cba5ee53e9b8b9c0490b4824acc0f18b22cf1c1edbdea3d42f5a33b2
Date: Sun, 21 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661118652
