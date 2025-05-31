Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D109F9CB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748685595; cv=none; b=slbhYKOrXTjhvEyLpb12QlJZeYSRmyFVv/5D19zTgK/kYpShP2QjVlG/dxGtIdpMEek+DVklWdY1EvrmpODIa+MlJQzUBKtg2ih8iFYDlCk76fp/heetqer4x8eaShCIj2JymTdev642HATQNCReii+3vfIRI1/jWxoqe3bRNU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748685595; c=relaxed/simple;
	bh=qEkTJe9v7bb5H5buU6YSOSGQgw4zoNBid1Th6VyTsHc=;
	h=To:Subject:From:Message-Id:Date; b=FmaGAuNeJkiLsTsYcsbNVQIH/X4WIbHxRW0JGDN+9F9ix8O15rn9004tB8eg4qdRWD4KbNcwkafcw9iUeC7W0ncc1FhvC5OblppJNSkV0zI/2wHkcpXz4oTSD5XfhWDlbXJEBoArVVuRZdW+vTsQwiszbKK28wU9VCOrkws2ht0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrNdDJ/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrNdDJ/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748685593;
	bh=qEkTJe9v7bb5H5buU6YSOSGQgw4zoNBid1Th6VyTsHc=;
	h=To:Subject:From:Date:From;
	b=DrNdDJ/iL2+KSXeepEjK0b3PqkuZN7UGUqv5x9kntVV//Z3cfnOm+RSQBLI16x2mm
	 xVqQTqeCYEI3C/aVt6Kq+qXpLyR4GGa1yNclMxhJkV2liJnIx3bCYvVP/783naln8O
	 OvyGMc5DQFDRDv752DBs9FUZO/x6JTjhlgj9xvOue+kXeKDftBg7UU2gqwgp34XVf3
	 5Bl9Cgx/ucwx/DFgx+0Bh3PIGY2J+c0ytMepNjBemgU1PU/aurh1jlO1y5JMiJ64ku
	 g+R3hDtFs/g47HM1gtA4Tq+jAwDnV4zT5UhgwBmeKO2oOldl+VF8RWdap2E1OfCyYF
	 BqmAgDmRs4Zfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043BC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868559358.9306.12092359886034035198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b1a06aedab8f2131d7025ebc862d3e1fe679706381aa28f03a930a3a21eab2
Date: Sat, 31 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748685593
