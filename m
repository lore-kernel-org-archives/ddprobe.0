Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36CA30C61B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773722094; cv=none; b=XgZtouWwC/Brv1FzL4p3G22NbbJCeYGgETKT/TBfaLc5tI66nNt4U/xaS1A9Iho2x7l7N86zcSnIqbSgQmooV6NDlOux58KBYSBZ6Faru8aI2ZfSRb2uIQz11QUtrUJcVabJc4PCe1g0+KhBf2/vsfQgRwj7Xm4x/4a1XguYCkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773722094; c=relaxed/simple;
	bh=n9osbXEdM6Xjg0VukVIKqY+pLiollnF2eWEM7/2zR/s=;
	h=To:Subject:From:Message-Id:Date; b=iGxIFGPUcmCcn4n6JGBa2jnPUBuyQ+yezpCOpEMjRpUTAQw3saCLhTaU8LCPC2m8b0WKPWBZ7oOu02jEJNTqovRno6lF3rukd96WMtKNQuDmYLtNiHz5ys1sluEBBPN0f9yzBBeGGAF7A8OxmJxQPAI+hkFyvau41sNJJzVLZDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrKoonSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrKoonSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79DBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773722093;
	bh=n9osbXEdM6Xjg0VukVIKqY+pLiollnF2eWEM7/2zR/s=;
	h=To:Subject:From:Date:From;
	b=LrKoonScDGsIwnFHJadtZ9vzjAItdQoF/aTldfjaeMhNxPx3p0UB5bGQs+cIR7d9x
	 SSFVUaDNlivyrQ/zRI1c9ayUoej6MZJ85pAhR+z7IUzk3wp4uPRg4dFyR6+aNu22Ez
	 wdgivkgANw5PzI03krWY9jiyxH/x1xaW/IhbCLPNNcUB1g+CdHtico1W6sVNmc9cd5
	 UZ8S7OYAkKJ/XWXWVwiAYwzfQ8X4lzWJWEAjzAZluAAXRaSUcMOTr+Ia3KFTPnL48A
	 3I1/J71WJhqYE2zdZrm7w2ruqRBzYdnDMSfjqbJMbV5KmK+yUh2fBCsXOqgS50B6Fv
	 72LWeAjYFZBaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D7FB5EBB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372209360.11815.214989933838108304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bfb1f4dc44dd82f805221d5344ba014b6f733cb064e4899dbcc24a7bc687f2
Date: Tue, 17 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773722093
