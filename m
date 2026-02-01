Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAA531AF30
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942034; cv=none; b=q6i8MO//N5+lJ4SaICFF7zmRgAaj2UXidlgzI+8fGoWbxdrc3MuwG37P7rTWlkeFaTG4mCcKPqhfa9FAuZ2nf6fzui33ISa/A7WT8gfNqVbcP3UqMmgVLvdN4WE7+lsS5ay/LpjqRhncIBbjML1AkCl6RWUVjbcT3d3mKxN1gew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942034; c=relaxed/simple;
	bh=Z0v2CpSXNzuDtgSsfu7okrm3J0+ucks52gNrlGuwbiY=;
	h=To:Subject:From:Message-Id:Date; b=bFFpng1x8TbeUrMr2Jk6zXhHJCCmR67YaP4GFz1DN5mmf4oi1dWXlsJghgHtdjHkBUs2ESqJvfITsi2oO4aE8NTpPwfnF8XVMaFd3cfCErXvd7aRJnYns7pzyZFsgDCEak1m7PElKEWi/7s2m7u6/qzh9T3OtBZ0rlGm4Ds7mzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8MHyOpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8MHyOpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769942033;
	bh=Z0v2CpSXNzuDtgSsfu7okrm3J0+ucks52gNrlGuwbiY=;
	h=To:Subject:From:Date:From;
	b=s8MHyOpUr4uZVHf0kc7MsTkQXXBnKE0wjWEmn+yAOz0xXvTjQuaMhT+KZhDzNstue
	 SliAcGzRTbijCbTFnLreaTUotTSJLRCxWA1z9NG2oT1xC8AJEAA8vbG6Ul5Tc1nN32
	 dEbgthCaLd3RwNP4IPtbNNMh9xBcFEdLSOSWzTGPyf+fZ+fYaIM2Rp135WKEZIEFTh
	 BP41MMxO72ooFJnPg0yRQ2PfwK1GpweaM/ayjRUNeIqQ04A2Rne5mNHmT0g6E90uSF
	 IL9OuFkhrbUWKuRrs8vvk3B78w65GaRa8dKy5+x6djNi3ftQ0xtjYBlKUWUCqyiIcg
	 C7YMhqzKRdZLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121FE7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994203357.9418.10572972761056606108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe04860d790bc9272768ed7df80c88f30af7a75d54c280eb109374034641360
Date: Sun, 01 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769942033
