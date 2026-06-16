Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B423B47DD
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598394; cv=none; b=EJUu3F7tLmnRfQOWtwbkSuTAD6rAXqwwrnZ+fntOXnOoNughcwt5ZOUyRx1L0Le1qt8kKUW6HpL0nGPKjJywdvwlDcgPOZC0/PBRJsZ/k2VHy1KXSXfP1CZ/zxuqdXpbcdgihmFUL1w2syT7A3pbZxcxQ1Itx9ShffeAa5PKEM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598394; c=relaxed/simple;
	bh=v44jkQbANHMjIDgnbX0X7d+dIdb2dJmUHy8K+Orj2+U=;
	h=To:Subject:From:Message-Id:Date; b=gCBwkyoCVDKEXAlz80g7GGT4DMqbpv+u4C5L/v451MB3pahn6wjGsxpim8rjAeJguhDz2EHoHJfxG5xBjRTe5V2kuDfHmUDOm30if1TyQdEKpivP+uP3qWQf9Y7bz9fnb2hykKsaelJYgcKtL8h//gSmoB2MRv9kM5GiGlUrkd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6Hag3zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6Hag3zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4211C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781598393;
	bh=v44jkQbANHMjIDgnbX0X7d+dIdb2dJmUHy8K+Orj2+U=;
	h=To:Subject:From:Date:From;
	b=I6Hag3zVn/vDGHyL2Y77SA4NLgCyXRbeR8IOVnICSviYWQDTC/hsD5pW/eP8ctVk2
	 UdYegoblJ2/KoFS5jQMoJBQ08J7i9KECOEflfRNydJs0fIOH5H6aUxmT77iWXdqGiB
	 TMp/cocw9mI0Um42O4zpQF4au+LEuK3neL75ZoZvRVBt+Jh34YyB/iX3gZ8Q70G8oj
	 AIdCgn69uKA3oEYaLefaC445UnmMlucO4LzpSQgTOaP3Srz2NMeWrgnb4jkvrTBz76
	 sylQsUXWUCaY+zrHNXABt8uVjn3aWcDZKzdiv9mM31iA5rmDl+zr565IvpgbizBnkk
	 h7vyqyMkGk3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A9FCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159839372.8760.18333951816574437601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f427973825b08c1a74b73fa56a9a5d0128a11c0a5f2b069e484ca74e22eb04f5
Date: Tue, 16 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781598393
