Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8519B3205
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 16:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653149699;
	h=To:Subject:From:Message-Id:Date;
	bh=BWFU4sca27Qwr4YB6bbtL+tMWH7ex8YIiqc2BpTRkYQ=;
	b=Siy1PvoCYsCvT3VIpsiwZutKuLOqLtaNBJx24gGzJgrOZMnkTJWj5/mq/R4ldBXY
	RWtYHFigPBdO3VS89aGSXc6krfMrl5LXON3Rfqnmr4e/VgugB8LmnXmx4sdk65n4i+J
	uAlyJdIqZTK63OpD6tEIL49AGmqrcPF+Qxxa0AWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653149699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BWFU4sca27Qwr4YB6bbtL+tMWH7ex8YIiqc2BpTRkYQ=;
	b=aMcEihRZg3IAdhOjEmoQ/vrgorFAqDKGt2xVusvstCEgUCPWZJVWYTso4NOtZvvA
	BhgXb7pspyayBhb2TKOuqJKDPOiLpVvWP76LqFgPBMNwCgv9JHWsneTaOXkn2Rp9O0P
	lYUbTln85CDPJdgBNfU1NMO9WddBvty2DvCs5E74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7668cb3-41a4ea94-9f0b-44df-aa03-22fa86104b19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1f1090aad6fa8aa015239f716588732bfd70dd257051e923d445dd8ccad0114
Date: Sat, 21 May 2022 16:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653149699
