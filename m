Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCFB7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660876252;
	h=To:Subject:From:Message-Id:Date;
	bh=F6t358hRi4yczboUulaC84n7vEKtCPrBkJRHk1IbMCA=;
	b=S2DY2QsqLS57KLbn4hsHoq0KK8pcdETsvHy5fFtRtHWR1l1d1m67epys1tnn+CRy
	+E60ICmi6U5fiD/aTMh/+zaibd6JhlyueFqse+uKg/aYJHNFW16i+kaI+v3MbLZkqnH
	Ro9+jw86ikoum62YikKfimiBeRv+agoCJyBgSvmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660876252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6t358hRi4yczboUulaC84n7vEKtCPrBkJRHk1IbMCA=;
	b=TXdn59bhRxoIcuGITJgn4xS08vzY0RPhY+92V1ITnd24zcF0nZcMp1oHpX0cSVg+
	CyY9v1EhpVO+1VpmXpNd9geGqbj1wGPeSoNZLN/Ucgt13K9goSfjQmOEdFEIvyLnkJo
	hs2giihVmssV2MgvAObIEtq3PsoYb1dyI+qy5yXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3f06593-8f358ade-61f8-4f28-892f-1ac4f0438768-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7efb9797affe00888c75fb9aa13abf80c74c28264217bb1fe5bc5f067901672
Date: Fri, 19 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660876252
