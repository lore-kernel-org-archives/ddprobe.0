Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493ED7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659496252;
	h=To:Subject:From:Message-Id:Date;
	bh=0UdniUisMHPix1wppdv6/OH3YdzYG/uPdSuMTi0jS4U=;
	b=jQ7G3zvkW5OiFbHV16vRLxH5znLL+l3IphArGrV2PVOo4FSdrk0NYWwHza6je2ix
	LG8P2kIH955SkekR57qodIEM4WASKKj9o6W69rBFSOkHPgOnvUKq92foGLFHCHUKWts
	Te1XXw7otZbBGvBxHjxdgaMjHHuf1Ur4dkzYu0l4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659496252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0UdniUisMHPix1wppdv6/OH3YdzYG/uPdSuMTi0jS4U=;
	b=ORFNLBnHRicF6+6hdWwaxpdANlGV1Ytqhax0S9H1tDJlDdgqaymr0E67AjJ/AXox
	yd3YuaBOEyOYKnCIdgSxEMbPvJsbRHQfIr+hn7rcns7qXDkglH8jni77klUpeqJsDwY
	kL43q+1b6b3ab/S3G+BgNrBeolWpk32/CpHoB72k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261af4499-4da67dcb-8e5d-44ed-bac2-73604521157e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 527d8ff2fea3969e5eb74ebf14c8cd19087e02cb80d74a1b5f0c6eaf2609a36e
Date: Wed, 3 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659496252
