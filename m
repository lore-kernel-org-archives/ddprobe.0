Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6403823AC
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645080084;
	h=To:Subject:From:Message-Id:Date;
	bh=R99qCfafGolxTltFpDSiKYDW89YNoyifx4iV2Z3po6Q=;
	b=Dvj10i9OZvRnkbZLOLR63yOMZ4CMji33Xj/pzMxCMaJTezopMxh6K7s42FI2KBZ6
	EQEsROJsXybH6ON245EWpt5S0RqnLiZ1BM/gKty+SZ16axhgThTdswAaQI0gjwjmryD
	eeiko8XNPjUwpjMDZVVItrk4xFdAnTaDJkKXN5bI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645080084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R99qCfafGolxTltFpDSiKYDW89YNoyifx4iV2Z3po6Q=;
	b=gK500tvc9XB5TgEfSyI24Sivf+wKHWIIVQXQWMwtRiroWZQ+RFrGm4FVImgW5YLy
	F7dfRF/wiW3KzyMSftrWKdawX1v93Dbpan22rli9Qco89F1TniT7KXt4Lm0aHow2/+N
	EGL8fqYn9LCVe8nVQfwU+7MXVw0nk7Q5Y6vl7wFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f066a010e-48e3ca89-cdef-4b2d-9425-e1ec15690937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba63aade07db44a3e471ebc5c823d3f2bb6d46b3cc34f84e7e44b0698cf96f48
Date: Thu, 17 Feb 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645080084
