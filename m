Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CB77C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C20C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663731053;
	bh=6x2h4kUQzKba7sOwxKL31iFBwBMh2XOnd9er6zwtMUM=;
	h=To:Subject:From:Date:From;
	b=NLMSgMXQBKc+NMEvzKAokdrYnaQdAo2XSoV8JO7/5zG/gjWoNGVs3g/kHU9q6KyVR
	 N2DCt3nf3L+a6f6FK12Y5nYxAOgXfkEkmv9akZCOdaS9CzV18ygtYE0yzWJWuCBMb1
	 qx59C74FeYRiuRKY14gpk56oKCkkl7z3zncGqCs+UswHkmIN4WM2mn7CQjP90jbVK+
	 JUGqhYnUGJdKTKSi1h0BPl7Dx28N6dn8zvWKwOfpGpIqLWP3X324XtjpjuAF8gMWmU
	 ZCfio6VGsRk20Z2xI9kGLYRnqB3+sU518T1kjLDr1yra+sb/zB6O6UXXmZOlJbrjPR
	 18CSY4RbhWv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FA7C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373105334.14477.16169000781951862495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088ded0c6c4d21e6d0ec51fdceac924bd2b008e65c392395f6a829a3e8649006
Date: Wed, 21 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663731053
