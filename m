Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D62563
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67F5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678866605;
	bh=lrbQ0QMFGBZ3HftglNCRMAVqeZ29wNq3HQwpL/4f9ks=;
	h=To:Subject:From:Date:From;
	b=DgOS0C99MigP1mSXb+pSfGGlK8RMW+HOMKFemSetGh3Z4fj5obYTRukdSDtQBjw1f
	 HsbZMdS4LvH1QTtAtF9m6RpBwmuLOuelKgsdK1b4pCFWDHRfyTCiWGrUgNyq2rN7Wt
	 OrapShcMlYuDD4/ymhVtBPwPPwJRbBHfVOXq6cpdAGyEbs0s25kmpU34t0lSqfky/w
	 YiXap5rgk5B/lF8gOEoSEK9dgzrryuwvXlBmN49f8oScRxs1DIGCT4rpr4pTeZwdMW
	 M+AzpT7jYXOGb8jx2hBw/7dtP3fVVpWplNTyZvZ3KmX7S+uYr4lE2RWTdkzYj9j+Eo
	 V031THBoIQLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDB8C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167886660576.30298.2818781668186638204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae55ba4f4010093449736a36720c8aaa017b18b7c0ae119949aa7bb9510adc8
Date: Wed, 15 Mar 2023 07:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678866605
