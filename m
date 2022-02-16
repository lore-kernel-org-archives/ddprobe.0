Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C017C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645008385;
	h=To:Subject:From:Message-Id:Date;
	bh=tZJvBdbzIx5F+GGFdbMFMKbskhlbqdt5OR7TERCodok=;
	b=dd+Gl0eOh2qp+FHUhe0GX6aNSbgUeL9kTkZZa58NB2WNMNIujnV+6WxwXnVDyhpv
	t/uTfEzCkepeasq+8BUD+73hVc7wuxMZ/QK9xZMjKDk3xNvZK9W3HtpoUbtIKEpBsru
	kGGbVLfBsKnXqkiibDoomCvRpT5OwWYExG/WuGIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645008385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZJvBdbzIx5F+GGFdbMFMKbskhlbqdt5OR7TERCodok=;
	b=dFhJL/Pm4t1Ww9ZK4kTURApH2GgAdL77hjfMJup+YZO2XRQoHVeQT2nHjKXA9zXD
	Y5BM7HF5aCqSf1LEyBRpPS10YbrYl480WOextA52s+zRTegQC49CtJYC5pu+PS2cobk
	yLCOOE988Wozlf+2LhtjiP/4c1QVPQ7UaJ4Y+NZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0223f312-ba5b55fb-5c2d-46f6-9187-914ae8d230bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1667e14f08e4b24e31db8058932f2647a640ef811d46451ec05e0eb5250ae5de
Date: Wed, 16 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645008384
