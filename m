Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81089463
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777656454; cv=none; b=dP+y8x0ZdRDd7nTwm2/HrY0ZTZIalQCcT9j8LgguO+YpHa9365yEpiYn3yeUmOxvoK1pgX7jRK5VVVOlLYfIzWFvjdCxOCphTqiGChm6ziiNypRsJiLQvYMnMddEUttiF7gIonMz8GQ7/TcYrqQSmMsx4Rn9g8c8GWwsC4ASV64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777656454; c=relaxed/simple;
	bh=eS6DK0zUo03oGUDOTI3CX9PrG92NLHLEv+hA4uqLwVI=;
	h=To:Subject:From:Message-Id:Date; b=fV+RAMx32Nl6C63FEgp5gXYtAMH59A9561FPF3tLaVnvtUyTJGD3Xu7SOpYDuk1OeAF/YgV0JmzX6fv2VJTCih7lcBFDtU/kifw0ue23FFonIjmgQ1NS84oUvsCCkfFRbEhOHUnTRZmH79l73SELGlAu+2VjQIzD3YYS23NNb0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf1eG6VE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf1eG6VE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3127C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777656453;
	bh=eS6DK0zUo03oGUDOTI3CX9PrG92NLHLEv+hA4uqLwVI=;
	h=To:Subject:From:Date:From;
	b=Hf1eG6VEInu+wzGK9/0X5phb6hdAWUUwW0cvQ1DUBaqAq6bsXOlSC4aam4PeVkmIN
	 FpS28OFt2nQ3q4snPQQN7ofxsPbkH9gbo0c5hZC1e97F8D7omFRvR7IXUCRhtBPffg
	 yNHiiPz787pvm2+BJsvgShcAm7nEDL1s3auAq8/IJE4395Ly0P+Pnyfom3l/XPKZXJ
	 r57IpM4dW4BU4tH/DXPGiYEfaXgTN8TRPQKcuyfVXhyLYrWEW9lquL+wvkDZJ3tie0
	 cc4YiX5CNOMxbSzlAqTJeuij6ZJq3wkr2Fdlp/0JcwGbh5uRwQglsDUJnA8GquBtJl
	 /UKMwHKcUd8tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD797CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765645369.9731.189634714358987171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3a661048899312a417b1694ae9cc3cbab5bc86f53b2c8d249817f7be578666
Date: Fri, 01 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777656453
