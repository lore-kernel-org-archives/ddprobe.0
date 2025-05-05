Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A66C139E
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746421794; cv=none; b=uyCB15Zele9+E3fQ155jiOuJfJ3kcn6DHcpDfcd64AaL6fqKTZq7cisonkQNVanp8Mr8CQl7CU0ThP109iDvnkEeWJaBKUNvCaTrvIVuFAW5/eSl2X4zzec2Z4IdG+YpxcyeMFMrkDzQev5RIaDLdxEtdcTrn+efZY6HUSJ3kBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746421794; c=relaxed/simple;
	bh=lv5SuZIqlzmxAun2a+FOqODfsJU57Zt8PdGpngCbS7k=;
	h=To:Subject:From:Message-Id:Date; b=IfpMGAIJjJNsnGFzSGcQ1nj6XT9gzj8j+mfTIHSpx1xYJCj86WvxRY8qwT0ESUjgSLfGgcc2zdnp/0g5m5gd3XADwqa/8eLpHBVjFiX1yndnMI+VjyBxoJAvvuK8jVPPe9dPpLviuDY0Wqxfj6Tco1GBQbvXyZtznj6S+XAkOIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuNE8Izg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuNE8Izg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A603AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746421793;
	bh=lv5SuZIqlzmxAun2a+FOqODfsJU57Zt8PdGpngCbS7k=;
	h=To:Subject:From:Date:From;
	b=XuNE8IzgVOPhr9cXzEThR0JCVRiHO5Un/jd6M+rVDrF56LqyXzEWuocAkiv1bJpU+
	 djjRn5S3NCvlxshtGm821HlMn0FG/t1g7l7EYHNRq5pYULopBVVJ1JWIwsY3Sbp0EH
	 l7jNjO6q9WvOexR2Bv7+nbU5VA9vnMdYsBq4d8/877HxzN7tXMkVvGSNea3Ub6t9LY
	 NOBcdddTK8NJoAqk0P4BWdVlVLKkybMiW4IgN4JPaPVewXFBSfoZ1ULhWH65HT0PSS
	 0IKt0FQEGJTH3lI6UR1TV7jWwnJZgPiPkO+NxPx7Rwb+7pDC8Rj6EsCQi/9zZBQhqj
	 eNnSiTxBxeogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94926C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642179357.7353.18200773035426874678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1f2b9d20892234349407f10447bdfc83bc9d47fa7646118be5d560523b196a
Date: Mon, 05 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746421793
