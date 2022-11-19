Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1E7258D
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B66C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668897654;
	bh=y/sZmcwyCpKVYoz8cYRPzQm+yYERq2U0+S73IDji3h0=;
	h=To:Subject:From:Date:From;
	b=ewQJx46C7x76z6yEPj9uQm1GADfYWFTIg2jcsl2zo14NG0A0J2P3eeK6gIddGtFOC
	 5ZszrG7fTmh0/aTH7S0W8yLA+ur1Oo4Tp+3yWsk+nGGo3mAkqsfGDw3jCBAuin40DD
	 KAwAUNfDcdn7neEzeub3kcx6eDBK97p5drBhscuFHS64X/rNBPVcKHfTxMnKD8jLIB
	 kqC7SCmTPJphH2HPfGxQjSv4jHqUrzuHj/hG4ReCAazx8sAkq7l3ip/PVOZOxDEslH
	 YonAEiyI3ODsNRSySfZry57455L+QlSTC/iR8QlcazM8SQgWY6wtDVkq3pgCkUcqqW
	 AHQLAmOhmqPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C76C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889765434.10706.744504001113445964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63cd0f8deaaa164ce2e39f458bc67b60b25319e55b629652e7c3036c3d06531
Date: Sat, 19 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668897654
