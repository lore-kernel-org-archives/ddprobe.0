Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63C1652
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782DFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668150654;
	bh=YoQvJxTG55coOx+Rrhm8fUw1oySDnjadxIAAUbAQoRA=;
	h=To:Subject:From:Date:From;
	b=Ac4X/LgSZp0kIvv3KPCFXcjs4dvWWQSWTraXiATrFAZvSQN6b7FcGwJrGI7Pm/Lv4
	 8I+FGNKJGoRqm1Q4mLXGFy10kG48j9d9NHwIST5/x1bdnRRx5zkUpMS+pPUq2ew8Wj
	 AXYXWkdYqvBMl1uRFfUMy8t9Oml3WvgAadjp6btOuQVN7sALn63XIlJ/nxw7yoUqur
	 b5FPcrzBS86/+D/GEGwyAgVPAp8m/KxmcP1x4B4JN3jM30xRGRQQIPHCMdXFd5pI2Z
	 oGVc+xzPW9iUTEjTOPG/nGnQz66rIiBu+Tg9nq6vG3p52BtNWKA04RlqobE7zldaX6
	 oviAUAfLjECCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA52C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166815065436.19641.261422379065516059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e807ba412e74b2f971b27b43122acd227faf62f74f896e25f0d91e82bf4969
Date: Fri, 11 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668150654
