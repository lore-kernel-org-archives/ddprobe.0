Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9F77F
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 22:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644618611;
	h=To:Subject:From:Message-Id:Date;
	bh=KP6Ep6q7FyKliHfrAOeDIhtoc4Sy1BUhY27XjiwGXWM=;
	b=gVusx1hIFgw9Up/TVeV+Hdvg2AYZ+yxs9yRoRbNf0uzQIWl0f5rDTH0GmDGSVpPx
	FfYn2f8UHRRXUibD3SN2p3PIT5Utnkxp3fCZ0cBstJ2birUlV0m90icxOZD9rvVYY1w
	qPk4zettluUrcgSrIUy0EylOqbSFtBz+M6a4DJXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644618611;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KP6Ep6q7FyKliHfrAOeDIhtoc4Sy1BUhY27XjiwGXWM=;
	b=U4jpXhtKofLUVpHX8x8ByCaO8hWQ9fmqhUelbongMkNACiMw0EtDV1dc3cRa8XfA
	KGOPeFb9IlQA0meWY/WvQd7Nh1zi9eWxF7eFT7E2BIE2KjkABMVnqI1Bkbsoi1W0LT2
	QQBJ6W6qFpLoy1aIdAnrRED2QD9LSPALKru0Hjpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeae87806-835cb378-55ac-4c15-b9ce-a2bb4bf85802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eca510aca499cde3a7c55386adcfe1f9366d21a41fbad6137af97517e928a570
Date: Fri, 11 Feb 2022 22:30:10 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644618610
