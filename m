Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8881A08A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754251794; cv=none; b=XlhKNdN+2/EVa8YFSlifNKiuvn3371TsDkkpnRrF8KZuzCFMajOHWU5XC5wm2FkvyagIZzUxUaUMgp9E2YznJA1a/UkAzrwhj/5JIYBB9/fE4uLH65OPfBcqiqPFXm71QYdMVhgsl+U1NU20Yamdxm9GyoW8gDPBDFjAyKpa4f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754251794; c=relaxed/simple;
	bh=pwr/hH9oiXuuE5QXtQuLXrMknt9F+yURP9FhDq6bSZw=;
	h=To:Subject:From:Message-Id:Date; b=kRTLnIQVzWWtTNHWSEkrfiNDA/cHzrIg4DW+ERhp2pkTie90BupFw+buqlocr+nqL9Yrm8V3IZdjrBcI29bbSZ8S7KYKB9CeNrQbSsGf5TdJIUNHZb8rQST3tTCFG/AId8085XOEVAALyavpnzibmhTX/UNBjUDB7d87c92U6P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcAoZG40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcAoZG40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754251793;
	bh=pwr/hH9oiXuuE5QXtQuLXrMknt9F+yURP9FhDq6bSZw=;
	h=To:Subject:From:Date:From;
	b=WcAoZG40YHH6RdHXM4lTtSRuIaKI+lbj9jg9LcI/CSvCfT1GUYKnsueiXRSWE2WhL
	 HU+quLl5JBeaE0sldOY3zWX3xMCkCPdG8LZRrWYi27TYkt9cg10WW6L6ONynUI4ZyY
	 G0zarAnPSfGSqNo4G70y66+M8zCfx4S9AD8tQ/EQ73mf2Z5Up6vocjBMf9Xc4Y4BAX
	 yhR4dZ+ANlsnqa2Z2f5hrTq/9SOe5j7m8hUmXcRkgviH5zr+PEu+mf4/l0Xpj8gZpu
	 fxnk+tbagErnYrgV3o6Xbc3qcrI8sn9vEhArB3iVXE+mkh3rbtRaZHUw1DCqjkuZa3
	 nNbHaNdQmA2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C8C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425179357.31691.340869069178031749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7421bc23cb58baf6e5e525821373a74cb43bb8839dd693a0a5665de8fb0aac
Date: Sun, 03 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754251793
