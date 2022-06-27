Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BD42586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656325612;
	h=To:Subject:From:Message-Id:Date;
	bh=m01yZhDxaj0Lizjq7VgJ+RFWnThTVS2y7m/W1Lz7+Q0=;
	b=RiIgjhHt5s7ip0gp7VAQZ1/26KLxwvgY16SNgVPvdshQrVFLZdbGhvCETXs7iRGB
	mVa++/Js4STaLXmMxq3UeZLTGTCA3YmE/ISnuQr+i2s87Q9U6wuqy4dwIDwFc28kzaC
	KpfIjOlus4MLOFBmQK9j+YzYJ6SsVP+vY/LQgUzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656325612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m01yZhDxaj0Lizjq7VgJ+RFWnThTVS2y7m/W1Lz7+Q0=;
	b=Q+QE1Cpv7KzDZar34R5Of7PIJk2X8iOALfxI03ZYarP0R/SQ3ZecIo89HygDyY+d
	IPpIrogzs9vVtW1TFPy4zWb3JU2qQ6BlyrN+N+H5QIWNI5mBcBrpPzsBc/TGDCIYdYt
	ueRw8jcoxONFBz7kWF/ojPefVMpZCqyMXiANabJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4b322e2-65fdfd4a-8fa2-4914-9c45-71d1ce0a1ffe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38e66f14b1df7d06fda69ecbaace904674c4350dbb0a24dc8241cf6d662d1147
Date: Mon, 27 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656325612
