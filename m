Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1081913A41F
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753324794; cv=none; b=C6uezgjymeYGg4VW2RXz4OHaPLFr7eR67XnIXVOIh5KiHzoNqBxcsvlTRMKTQb75KljBfC2wAbEYbVnNTigHFJ6tDcTQ1OIzX1ivAKGBWs6lGTda1OartKlgBVkUc+qLtnfOBrZfcFOE0vOIQ30HngTDQo3m+fLf9OrVJnYeRoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753324794; c=relaxed/simple;
	bh=RvhFTmcFUjEv89MfC/aRsZg0mHKEPxT+2Q6+3CZipRg=;
	h=To:Subject:From:Message-Id:Date; b=q46n7y3d3TASklHpUWfdgwCM1BJhRxJU1c2WGEo5w5XKDwkJDBULdc9vx0r8MUWvPV3/e2Chyfof0KEqDjDBbEJ0akzuS2+1+7G7ds4WbDHCNe9OiZS406mxbRUYP1VOY0+jMYg12Rncgbn2myk7qYOeDtWbi5w6/fbGg5+Po9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7jPiMcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7jPiMcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52AEC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753324793;
	bh=RvhFTmcFUjEv89MfC/aRsZg0mHKEPxT+2Q6+3CZipRg=;
	h=To:Subject:From:Date:From;
	b=C7jPiMcbZ7oQdnVPxIEWcx12cNqOPx8kv2Fzfd2mM0zlSKOFTz8MgttDTPkzXMx1A
	 XSZHlK2D5OKZUf+1YcZ5Zf3fSeRHXNgbPgnVIbZxXrUVoI8x3JmtPyZucvrYl01ehB
	 kv5/kkTg93msLqJXbn9U8O29x5XMiNALvGhn8VzVkJrbI2A6T8sqsTjImxMA7nkl6C
	 vax6IiyXotih8beJTwlkdgTASJ3O8MYi/ecUXRu0tNej4VGLNapxbjQXgf4h8e/WQp
	 lzKq+ZSOeh9XBqChRYIxloocSeeGdjfesRHMOYCz854U3eImaQbIC7HO1kdAv0c3QD
	 46aZsXX8v3ZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F2C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332479358.3205.240067948294986562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca60dbd1762d1fec6887a3562c45858aefba52708fb6fde5e23da14e59f85da7
Date: Thu, 24 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753324793
