Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E05625
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713586823; cv=none; b=JlmeOHfqRhhgRM1m7O/fFboIIwyJj6Fz3EWS0X9cufm37X0RIqqNl20Rzur+KDU4L7ksCtnIJD3gbnzw39PtU+Zi2uOJW2QJPTG7gg0ry6Gu8vasf5ju4vGUoyJiUu4J8Uo8ZpJ7S8EbZnUa7EOBcum8MNmsDHwcS59Y2AqkxuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713586823; c=relaxed/simple;
	bh=5QLa0Yrv3i9UK8hvXXIHeh2UDLwY0N9wDUjZAIpQdf0=;
	h=To:Subject:From:Message-Id:Date; b=YGZ8XgVvQZactkuhlehkRQvnrMBiUudehmgILbTWzTO5UI4Avj0wWE+0hHvKHZkgWLoaLWvWlW9Z8/zaoG5Aw+8QOMcnm75uy63BUp+QPj9ebjbKQq45eoknzCTfheDw35DG8btlsUkQ6ucmnDGv7pXDXG0sItCJS3e9AzrQ21M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3bqW1IG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3bqW1IG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF350C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713586822;
	bh=5QLa0Yrv3i9UK8hvXXIHeh2UDLwY0N9wDUjZAIpQdf0=;
	h=To:Subject:From:Date:From;
	b=c3bqW1IGF6MjX+S25aN0PJ+jaeeh/qzyybnjJv2mXaXJOmvWhA9oHNKEyTbDkzPXm
	 D4JcaHz0EUWv3Tr5kZQXbAT7FFluxKGssj5WgwXKeb+RWOrgLsOaOee0GVEelwh+7O
	 AAWug/N0yx1X1rRsYL6RLV/LwH94yvuPOGxCxTVK3i0VC6pfpHzVi47EdUM5nLfmcB
	 UdHyxMh763I9s+GekrxUN2RLANOgg0pUFOqvZ3pAIX+7H9OLbTVCggAitmlgdFKqpv
	 XE/y0b2jcp3LOjFY8RxPEqxssSR9bhfxIHI2/FTkyiF7LBPtlsB/AXJyvF299sm6PP
	 tPDuYVvWON/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26D3C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358682276.31468.6660857393204414005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed28449cf59a84e0038385ba376a1efd346fb7163963f058ff623faf4645c2ef
Date: Sat, 20 Apr 2024 04:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713586822
