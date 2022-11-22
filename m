Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0D13222
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC2CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669142454;
	bh=PHthE7pjV4bMD7IC2+EqBWjNM32ETsiqVF4wNFtvolA=;
	h=To:Subject:From:Date:From;
	b=RglphyiUlVwZBllfUEJL+ryu1/nT8Hgzxwz9zmoJqaGQ49VnqmkAl66DqFtswJn7J
	 mdHMvJwMhDpHuOhh1ivM/rbSdxF+wn6/ei8VKgcUADQ/o/NAlaUhWDg+kyviE2By/m
	 y+6FrhbDx/Rx5B+vUk6hIKLqH4Fb/YfmbUi0MARTZaDrr4+xLIgDSR0CtfX6aQrSae
	 9Ypu0J0tp5FXGxX/OiCodkHG004swpJRLIJiG6DqqhMIdCHndosWwwPh0iOz9K2oyW
	 PxGY8md4nHO4GY0vKHJWP74aMMFaVPxnnfO881UnuxXIOhkWLcJUGsXeLvRFl7zxs7
	 SksS0BuFtbkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5600EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914245434.1780.7546144722664138450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b4c4e4b2fd19784a75b45f14a60cdfb3dec1d71852537ab4bcd1a44007c497
Date: Tue, 22 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669142454
