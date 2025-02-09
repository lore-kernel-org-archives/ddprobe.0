Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB8F6F06A
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739101554; cv=none; b=N2QiNE0+hFC+URyzALWbofF9BS8wARyF8lMPAx0C8M8b9TYWsnsyY8ZgIueN2xgI5uk4DaHpEs/ZmyBtVV0wUtfM0tHltMDOljzVqkLRXEKq1iUfghEKjFdFFtKGuxmJy0QvEKp/iNQmDuq7m/23IjAb8rKO6C8O97FfgS3Ppsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739101554; c=relaxed/simple;
	bh=BzGNQwzJu6MZo54goy2PfvRxwgTpIyRYQswSKrjA8oM=;
	h=To:Subject:From:Message-Id:Date; b=Ea6BrFTaE64kQoM5j8IodmgbgU57SRXsW5zF63zCcaAW3m02gf4+OXSMNZUg9dCjdXOlOuxssk1TmUe0G2Wus7Wk4Gkq/bEXMc/pSjT7NY9oTG3N0STX9LW2a7EamR3xIfUczi72LfbnIb1oa3oAdC5yGBb1rKWHCLWN2OLxf/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw9iWCqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw9iWCqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3981C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739101553;
	bh=BzGNQwzJu6MZo54goy2PfvRxwgTpIyRYQswSKrjA8oM=;
	h=To:Subject:From:Date:From;
	b=bw9iWCqheFziDppOuZ9Us+FSglfXK3ipG2n8Z5xx4iZAcXUThVj302oxSpBs0J5B3
	 j/u6gt03L1EcGwgOwfptykDFtn+g74M9RrGrCPIPgtcaVtL1ErCQjij6sXHyDcqgle
	 etJetd07JQwnVN97K6fXhltmg1VXT660NTs6M3IHjoDHqU0GUCERV7o66/ysMpIlNx
	 DuhV24zMZYQY+HDc8Iqwu8IQyv3nHrqkYp0nR8YKCGvjiZeqxFYUJHN5DGOe9LVLFA
	 yAgPiizOyU5E1ShxsRRUEqbPSozHxP58Hyie4cyzEC8t5mBI8RLWtg0laZgU+cVawF
	 s47qBQTYHIHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EA2C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173910155364.23733.17781351477635873987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd85b7e2902caa5dda5511a134791017e305fc791244b3114d952dc3574dcdd
Date: Sun, 09 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739101553
