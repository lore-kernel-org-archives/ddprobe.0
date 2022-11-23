Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CAC1FA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C285C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669203654;
	bh=nScVKRIhSQtUqk3EqH0liDCFy6SjXCWn3rhLRbCw38U=;
	h=To:Subject:From:Date:From;
	b=WtnzNNDmh/24gOXsGLHD46W7QqHJtVhr5wWliOY3W6xMeclqHToecmp2UGtl9UvFm
	 ErBbzBdE+DosIpCynQrVBBFE9nBzmJcz26vypzOmV+7SDEGSYft+CF4zhDpryJ/lfb
	 eeNfoPNBZ1zBMWkdQbWXxK1hmewS7icBu8hErZoVu6k875igdHNf+Fl8vU2XNM8zr+
	 iqP6UtnGhgQY5APl03RZ5n/q72U/A/7Zl8DA9Inz6gGav4nG4TVXfd+hbUoxnmSV3g
	 ynznMD4wq99J5fCSX4KPdQu7L+T+iQ8w1ranfoM/NzCIvWAJCgP8yrTFpGMBVMHTDh
	 L2E/eKvVd1j3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523EBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920365432.31120.11833483820928372283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a909c155eb3fd65ee7c18138a886f8e257c5a3c8a35611345f898bdecab63bdf
Date: Wed, 23 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669203654
