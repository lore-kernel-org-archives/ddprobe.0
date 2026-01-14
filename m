Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0589B281525
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768417434; cv=none; b=cOeVGZTRIL277oZN8AOx3HS6sZP0oO6Be5cnZED3ZkSqCp5tL1uJRJnu1ONgFF4f/yl8mMqSBh0zUBdTK3jFxTEEN+QfQVDv0wLknE6tBYAYxvRbsFKailoR022jyjg6n+1JLj4nb6JvjgRGX4Yz2F5igDXTGpIri/nL3AVopz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768417434; c=relaxed/simple;
	bh=BfqUH4blS47JXoGK6U2YrITfVii/5dFvsIJ6jI4TgEg=;
	h=To:Subject:From:Message-Id:Date; b=dnBSBD8bFrUtLAqbPbnykhhX7H3TAOqP7VkrzVuCmR2Gja2Ekit+QgqplzIckRhuc9LzIuUZZs2HLJ3GV0dS4e6sDDnngGWHzNwRu5fcidTrZ0hU5THVlUXffHFden6pvPvZHktUP1ZaQXiYMCsUDb3qJGwr1s96yMxDu3Bh8yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy1DJdCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy1DJdCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2725C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768417433;
	bh=BfqUH4blS47JXoGK6U2YrITfVii/5dFvsIJ6jI4TgEg=;
	h=To:Subject:From:Date:From;
	b=Yy1DJdCbEjthsP/7Q8ywq/Pw6K9VOyAa97x9D+tsDsLwReAY2C8D+XrpIYFgAlmPX
	 c0oMGdiybmAeH+vIwwFufC7KP2A5XxuKMmz8tOXr80tKj/pdl6tauV6zrVzCy6Ppjf
	 A8ykjZZACpV3pPzfs25vVrbMqpyWnCM5rQKr/pU/CFY8+IkgBSMrccdwty5YkWln/9
	 /C/Kijrs1p7qGdOuO5+mAr4mgbuBAGaXajOkH/DDfoQDIDSuljgCjmGoqCAtOI92/F
	 /fj6m2LEXNnwmjQtCL5JjIT4rRpO5eXe6co4At7wEozQ56MHUt7kRUEhdKMkaJ33CB
	 MRoYv1fHwu73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94176D3900B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841743359.18231.2725402422345992201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53d3a28979e7ca634e23eecdc3200e506856971d12819cf8493d39ab2ac7b68
Date: Wed, 14 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768417433
