Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D62117FB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652346479;
	h=To:Subject:From:Message-Id:Date;
	bh=pBh3Y0be1fp4evQI/7BVCh7zyMuCnL4X7tG9Te/c7Xc=;
	b=hrDxFgcbJPA2Dmu8jqnrqx2YMoGUm+kAuLl7PbQlZamnCJZGtSrfayIUvzWt8eEL
	gHgUw1xWfwcfjlHk7dPgu92wpsMEtinpIujKHJkgKN5BFdaSA/gUNawSC6vhDfHI/I5
	Gi9w6KQX8I2uDprlMCDHEFxaKkoKLqEYP24I/ZkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652346479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pBh3Y0be1fp4evQI/7BVCh7zyMuCnL4X7tG9Te/c7Xc=;
	b=dKrr27cs9XfYbJ3Yp4idZZzOGlt0ZtZ4ZA1JnBWypJ/8bHqB3NT/azmg5aLnnvUz
	NP/S2bHs4ux3pyE21wXjt+lstncBUeciURgOh2sGHIEyll+tn/uHceHvao0X/RBupO6
	6yQplz2qhuh14LpV9ROeRxHDjJ8oSZD+Gmzkp+vk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b78662bb-2366de63-647f-4fec-9e2a-949dfbb07f0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 170ed4453c3a9390aad4cb5b725df828f5b030124e6bf98cff86bb539c37b83b
Date: Thu, 12 May 2022 09:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652346479
