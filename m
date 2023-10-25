Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1946D2D631
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeIl4yBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A8BC433C9
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698245896;
	bh=SPWUzxQADQdWK7cyesAR2E/gqSgw206zIB8S7E93XIY=;
	h=To:Subject:From:Date:From;
	b=XeIl4yBQRuxu4dKYGFnkTMkkpD++e+zOI6r3vjEn6xYUrj7AHWOf+MyLpAsLEdb0j
	 /bQqo5JLOV5vJv1QFv0F+K1K45Cj67c9MXpP6Ls2TKthM42KDhvaIsh7/erbpMl9es
	 5LcBLUZKqqV745DJXahLpax7JqgK2Sg0g4KQHfsJ4Wb8Jc+CxLZRmDKdpRbOgy4qHO
	 81w34yI0P9F5M/LJXzVshC6m3dq75jUMLucCxtT4eEmRn8whqV9UNUj3U5DxgmG7hc
	 DIVCE6E7EatA2RaHoMGOa3hAnTuMPy0mQV1xEOEiLS5KsEgLqj7Ab+AQ6nbPQR7eBc
	 YkA4AvcpaX0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66192C07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824589640.4891.8991513477042758685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bcd3e460cd8817022fa0c459e58e5a00e5b02368b411ed55d95e9c7ee49dbc
Date: Wed, 25 Oct 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698245896
