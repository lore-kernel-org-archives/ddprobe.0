Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAC178F26
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752467994; cv=none; b=aB/4IZR0B/U7gx6iXhUagQv6ocyXxMYyeKeIcv+qckLEfJWTYe0Dqi55nx5LNu+jnFCw5r5EsyBMw+kDS6r7XI/bHnUGF17zwjVQNUHi560wEhr5ZR3I0wY84FVn13bFvTbVFNOQzNeA3LOE1DOsJM0E+4K5AnazEp2YjE2WIK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752467994; c=relaxed/simple;
	bh=9Z1e/20wzkKHJMlRDdgK2+WySa3eZGpyWcBjhRZY+1g=;
	h=To:Subject:From:Message-Id:Date; b=t3yAYZxFYvebReJsKHWViHd3tN+Vxl1T7omixA+ahgzQubVQbBwXUUonG//5ukcUs0VHgDjxmvbmmZHI+Fso+Yv0OHzL1vAKQnT8zqYQ6DOIyDsaLl039ppoZ360znUVbDV+BtDSxXv4ODhfWoZMVdf5JUhE96H6HC8H7uKN2+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+NihAIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+NihAIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F01C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752467993;
	bh=9Z1e/20wzkKHJMlRDdgK2+WySa3eZGpyWcBjhRZY+1g=;
	h=To:Subject:From:Date:From;
	b=O+NihAIxacHGlufh8a9lWgVfXq0OygiKgYU9MOsbatHVEm06QUDf3XjnA5VgJn5Hg
	 GdkxkPpFYCEQrLexSy9DjI+XHw5uSD4+UYbQBCraNjPDgky2DshBn9VzygpNGbG+JR
	 yqLpcp2Pe+wgbhPPilsr+BsFoXjS3VChMX4I1KEDzz2j/NpMWNs/5z64TznjBEDQJP
	 ASXEdlbV9feAyVeKJFbPYDYrfMyDndWtOnW3nr7GFDxrtDb+bby1pJWZc4zyGXjtAP
	 M5tFh+0HQZ6+IzCMDrOJqlbRF1P0k0As26XYo1SGobNrIczK8FR6tHjp3cJFklcVbl
	 X/XIemy3nATdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F5C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246799357.16773.15314016303275900235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f4878e2a098d63decd3386b36c68f2df01a5a6cc78d9c8a06ff22da81c6d6d
Date: Mon, 14 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752467993
