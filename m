Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8401D18B0D
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 10:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zyzo2kA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED6F0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 10:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697711293;
	bh=g7jNAhn3ROvapgXCZgbX7xnXbqCcyQUVsylUnWADJ7M=;
	h=To:Subject:From:Date:From;
	b=Zyzo2kA639QR8d6/lsWxc+A1fZyqgDYv7fTfoscdUx+PrK86xQBgQ/ObUPPNCdIIx
	 Cpaz8ayPYf/MOo2eA/u/ji8yRu8HM0zOdL9/KFMeOTc8ekZ5uRmPKK2L26LNFmRj8+
	 1ZtHAYMJ+8OcatFLRQwKmvr09MZ1Vnfp53HKLvzXmu0k1Mqzh8j/kZAnTysHiXv3AD
	 ehfJMc7CsOTci4meX3ftm5PBvnMX60/HUIHUb8nZX/KC5WXUvwIQDm8pavV3MWEQDS
	 /GGrE+9Id9FQDUBMXSOVW5GSy4sTzyAmaQc84Bzcb6XccaqCBkL8w7wBf0dmr90je8
	 dxZWi87P83BqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D036DCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 10:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169771129284.22766.1380493674456918629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef56c280ed4ce8784cb158b3ea9c77c446d8c31781760b1b8043ec6e39a7bd9a
Date: Thu, 19 Oct 2023 10:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697711292
