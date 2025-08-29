Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DBC1D5CD1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756469994; cv=none; b=eDYB9argUQGLRMc5/ZxS7rhpTwVV+WiXnKXO55p1Cw0UKV6zPWPyCPREws9GW/VuvJqxRZzyqtY//p2b/0mUU8HVz5rQfIwMElqH/r7jTnTt8pH8duQfS7U4h8zlSKrWDPILohb++6GOwaOFHodyn2IxRcqv3Q3mOy4tvMPcYBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756469994; c=relaxed/simple;
	bh=mQ7ZfwsAEZBfNZqBAf5hnatuMEX3ZKCTil8hSF3/aps=;
	h=To:Subject:From:Message-Id:Date; b=tppcG1sD1N1tg3wqLkS0IgeMZ71UYQFNhQsbMxloxmP8o/hY/OXlkWb8hX64ZXMe3eARfwycgLLTCr6r4H061OIt27ZgmMiBq12eB2e4/niYr3VpyeETQ3KD2Wnc77zzaXzyPViixaVI2amMQmpr915t2Z76Kv2JC+SeCDLNudc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8sRXj4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8sRXj4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E7C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756469993;
	bh=mQ7ZfwsAEZBfNZqBAf5hnatuMEX3ZKCTil8hSF3/aps=;
	h=To:Subject:From:Date:From;
	b=a8sRXj4gU0JoVzzdycRCEsl694h9KpWMTqRqZlTTNjPaZNLBrNTpDMWCklFVSqwkN
	 mCsudWdO+LdTBPAqvBNdZn8cwvF1cvxrzb2J4K31CiA//dBW/4+TgNXqa/02TZCVA7
	 y9ieKcVL169ff7bdCqLrUhonE40CeMo9gEu6QFK94L+GUpLDBAMXMOsI2kXSavVTFJ
	 e5W8aIt39NtiTTysZ3dJyTrRsBvPaugMS9wWd1I+Lyo/0Rk5ol/8tbOQX4Qo+T+USD
	 eK91GtEJk0+NQbq3KnhFO9XMaJM3qSKUjLWv5ld4eR/iqj7UW1+me3qnHnMTjQAJ+g
	 P3oucY0dU4ZdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C6CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646999358.6674.17868470505945396772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e460984ff85835587dfecd6751fd06eb588df2760e823bf6d60161a9cd6f71
Date: Fri, 29 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756469993
