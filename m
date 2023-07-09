Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B39D79DE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E7AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688927228;
	bh=ZV8ZW4BFUykuaUpUkgzDQ+7s+bod3lT/B8hZ0KUrWp4=;
	h=To:Subject:From:Date:From;
	b=BofSJs7exxjAzuOrjM4zvwzMtcbsnhrYhCfrEWP/HxGevXkDGNQwPwVYYAm2JbIuF
	 Ku9Xr4gMNHS4K8sE1x4ulcos3CQhwmnrlIo7NUq4xYF3NcGdaQ9LXRwD0sv3Ibj24t
	 3/JgnMFxxYf2aaczj88orjHME9l4jn4tPJymmdE26O4gFbArZzH4Vrj7UrRcS2dVCZ
	 gHv+z1apthPNG+BxXYd6JtGjFsIEzBYJGpyB8iAKFHh5qufoWjtt2YlD08qhs71lem
	 N/NzRo4DMyIAh68qshSMA/riLs77f5r2MIkkPiuZLT5xG4SoCfy90ZDYivEBXwkJ5z
	 nV8jx01MMoFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF8EEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892722876.14428.4219909659705337312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c615d564ad2d95f0df6008c0de3192a0b6810d4e73de649cc543ecc2116de9
Date: Sun, 09 Jul 2023 18:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688927228
