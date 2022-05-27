Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA57846BC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653650759;
	h=To:Subject:From:Message-Id:Date;
	bh=QCwUOA0/ZiKFPKrKzReLTlZeHt0j3M9xpTV7fTyBIdY=;
	b=QmPp2d7VOo50ue2fR3sfwi7F8ciBWQWgUKkcHDG6g7Hcsgs3zfsmdEki8buWUC0b
	CpA8WMDZ8K8MMECOwZUozo/pvTfNthfJYnmPvMhdNr+axm+G4VC+Vp09W8Oyj7rQGty
	Yxyx2bVbr1mcXrAuCaKwkse74D4lvVjnGM0wRAl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653650759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QCwUOA0/ZiKFPKrKzReLTlZeHt0j3M9xpTV7fTyBIdY=;
	b=CXBWzvA1DJAZsASKCgFd6GQmfaNcGc4CkqIyu0T8etQ4lsdjn+Zcm4f7GfoU7apD
	hqnc7qr+jYJlRHLygNdnCBtysH2G2SfkEQrWRJX28Q67O5pcgx6tDoWIq05wmZfcbvh
	onRBPRAI+FRUPUrf1yrjGUNmUQRqDqF14dk9LY10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105441e44-31cd6be1-f9b3-443e-bf42-f13b97aad12b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d82907ed72d2a30823e3cadd3a28f0f41d9b05a2d3d8493fcb5ec11377c81b8
Date: Fri, 27 May 2022 11:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653650759
