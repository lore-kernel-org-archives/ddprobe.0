Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AB030D3E7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784999434; cv=none; b=HPMLBXXRf41CJX3aO7hUCF9g7cFqb3TpAsM06dObBN8zw5zwXTrKaHMnsrwUdJTiebMhQjCMD+3EPLFtFdvc97wsMPjGN1OV3M8swSGydoQPyobneFUdatXCVZeQlZ/SmmFTGmfKM/YfsH75h2acTDuZ2Z6DodTEFNIc/TY2JHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784999434; c=relaxed/simple;
	bh=Gm73YEAGApa9fUm7Gb+DjWsDsKArIllao2GfR5FcXnU=;
	h=To:Subject:From:Message-Id:Date; b=G81zGdIUspFhDz0RPLYxTdezXgIkyXNRGWC7VgW6HZjYjn0mNGORhVD3vjfSEDliRvlRCKQSxrBNTM+Q1UvDWVwP6KKvd0J4TYSJzflKsqCO2jzvkt6kswBAvpKmqgmXg+7FGR5EzI/fivb7kpp4s6El8F61Mqsqlyxb1h0Jf+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjuCKGdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjuCKGdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69AFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784999433;
	bh=Gm73YEAGApa9fUm7Gb+DjWsDsKArIllao2GfR5FcXnU=;
	h=To:Subject:From:Date:From;
	b=WjuCKGdG816/giMD6WTOHZke/Fq8Z/VI8M539N1u0RhzL3emSGF0l/VdjmflfxvB1
	 yzZG0ATXAtb6KjBJ0UuUBfukANRnXtryv8/RmerA7RpjM/5B3HQlzF+nNCRCHveKWy
	 vnVyPf2a9IPjgYzL8EoI8dd7AM/S7VSg1LuMyasfKdL4XlloEE7CZ+96eaGy5drNOB
	 XJ/XGubPWVEKxmd5bQJR69ELav0qF9yLux4zWJCXf4iBDqq6s1ghLpqU+VI7CGJ937
	 0CQMstkmHu3cKQN+p1ZifpiVjxYj004PeF0IgHkVcYyb19xzTC7CJslwAE82ioMPff
	 1EXMJ9AfC2mBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CCC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499943368.13025.15890387321089265568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8235c83b7988a9f0bd6a862313574541fb434e462ab4246cd7858c17e92b8592
Date: Sat, 25 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784999433
