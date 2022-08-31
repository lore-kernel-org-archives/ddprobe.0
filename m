Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA7E7E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701E0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661940653;
	bh=KFHPIJzs6AH48nQZQBX7+8+YuhA3V1RXGgFc0uEbcOg=;
	h=To:Subject:From:Date:From;
	b=BfmqBD+fz75QRphTmRXHqgkcASy1CqGUp6UZG0KoHLANVXpsi3zXJRBeEeECSJOyn
	 6rW/P/fleGI6CJA5mFV3kqi1GuRdwDyRBGH85N6mx9vqj1U5YObN6uGxVywLXZ5iTU
	 MCCmoPYfIAV2dPrn9b+V5LrU0KENDAwy472H0dU5G6zlh+UkenwYUBAxciRrLc3suu
	 zWJ4e78IhAf58rgqh69yrhI2NKCMqt6dF/DFLuGfkR7L0fOSddwjDTFcBQEU0i/p3c
	 5KUALF/SOXYcYmd8kf52xm8uRHUzE7LcplSt8JWmTG1Wn6U0EUIi/cV9zefDrVj9tw
	 1DFpLf++C/ZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520BCECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194065332.25198.6264013819516567007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbda2a4ad45311c335a74400cfbd4e44ff32a04d04fb68d86e58c226b4f63968
Date: Wed, 31 Aug 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661940653
