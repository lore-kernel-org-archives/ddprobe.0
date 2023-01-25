Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB636FB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7352C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674677585;
	bh=gsznyetP+2AFbvhLp/RkYu9wPToTFOdSBFX23c6KYrk=;
	h=To:Subject:From:Date:From;
	b=aXfjFguaYD303phw+YZCVfM5L4YgXOAY0vkbUTg1K8sEhPSttmEmmyyrRSLXrcdKM
	 eglRHtNH1y3uoFC6PUOcmn69sCoWadvPfceIf1q3AW6e8fvc5wgSGLrX+BapiE9mof
	 zAvQclh666qbsIDqLzRl4lxntpeiySUSIBtKWy2k2lVJndprd0m71pnm7mfTiafiuQ
	 gFXdvxTD9SX8u/jbZAqqNWbnwk7u1fpHBfuVnTXw3tENSVqHjfz5YYG8INYQB3Zezw
	 FA7Oya32jyA7sPQAoaBRr8HsF/PLr6Vmd1XkkglApkklSa3qpO/wrrzaI1Y0TuGkmz
	 xdh3RyqUx7aOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6D9C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467758576.5603.15819072629287172781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b5ca50b73b8e3e660ee056132bd8550d307339f4afa5d93472ca3213d811b8
Date: Wed, 25 Jan 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674677585
