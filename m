Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6AD2147F0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737568554; cv=none; b=U667olXqHC4uQ2B1/araTrBP3hNiUl1Y3J8v0H/qEP4OKX1QYTEa46cI7xiHEnmVuReXhMHC61yoIV26suCBDylhI2R1hlsIcT4X3xlVvqXmUF5MGjpfFFxVWagHGlSnDQF7TNZ+1VQfZxza2tnGzwT+qcjOSZX76YGLBfJPZvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737568554; c=relaxed/simple;
	bh=YAaAhkGPvwDLeaQ2YqzifqZ1f1RhlsHm3Ukk38TzYpQ=;
	h=To:Subject:From:Message-Id:Date; b=VlOSNGBzVyc2JYzYiXv6JOnsHNVnOMQZCa33v+/p3/gkgMRTQEjzhkgFO0CdutEkMyGEn8Bg0DgZajRxQciNDng8kZFHRzZwHrEbfspKOlNh1DFueRnbftVDpfMN2vq3klHdHg0y83F4AmoxpiozRztQB9jwhRN0Mr10uxRmlW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmE6loeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmE6loeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A65C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737568553;
	bh=YAaAhkGPvwDLeaQ2YqzifqZ1f1RhlsHm3Ukk38TzYpQ=;
	h=To:Subject:From:Date:From;
	b=hmE6loeQ67v1kKqzVem4Rg1ZpFJMFVmABonpfODKMU2PE2vdvZr5prukCfQzOR3a7
	 f3kfKqlmBnu0N5+Xb3UU38R1fLGZ4+ucTsQMK+8BjnjLfyK4oi0qxkNkQNrk7pOkzB
	 LGLW5dJ/TkbTjCPV4PJd5/H7RE51Ike+LpNF991DxewI8tPm31dI1AXLVyPla7qx44
	 ZQ8ru+n99tG3bPnZv4oo5EoY+d6qihN46gqS5JPNJVq5nR+ETyGe9hM3lCwveUw4uJ
	 VBo9vdRRTfl5utqbrmtBcKLl2EaxejoKHiZUKaKIEYsRl53IXczIhHz17l/xLlDcHi
	 FiDBnaACk2IeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F16C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756855358.4147.14230503709105600703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cdbcdfe8e32329ca608339e47f2890c06639358687557d4114f1a84fa1a628
Date: Wed, 22 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737568553
