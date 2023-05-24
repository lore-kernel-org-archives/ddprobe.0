Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B7522627
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED60C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 22:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684966506;
	bh=mG2OW3ByZJWM3WI9O2Yo68tun6aWh80xfKP0vOFEBak=;
	h=To:Subject:From:Date:From;
	b=ULps5gS4w+ssiiJnG47OwcfueCD8INeS4XXcPADsxeyB9m/dCjDX4gLJtMLhVzrYs
	 p24BsuJhNjDtoqURV4WXDvObeSrOxz9lk2AJDSNwViGH2hQ2Dg2hSqATlG0n+YUty5
	 oALkA/JwBaB/GbUjC6/ZAQdl8wgzFZx+fjbmvDabUlOI4qOfz3egFhcVHnkaTXC6QW
	 qVGqeTMCDZkztVOy8eu3x/+reGKmW7JjWPcKC9VXGl8aNvlEavFf5FnjEIbuZ8+mVV
	 6O9pHaEqGr0rF1kJlsiL07K64pIl8NDl0CYUeJS6fAg7hqKvuNEkwXc4nMBsO+ef8M
	 3/ukIj3XaeY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2C2C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168496650580.11065.16992530154890985555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52c43574d9344255f0efa199c1c9d58183a70fce834502c4b00526d617523f7
Date: Wed, 24 May 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684966505
