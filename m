Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2314CF4F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnlwZ2y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1FDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704573496;
	bh=H/RKea/y67VonBu/rKFmj+vOpLBNkssUA2Y0gxX5mXg=;
	h=To:Subject:From:Date:From;
	b=mnlwZ2y5rmBhDRtjbJsmhPPJbfZ02A1kM2cUf3naSh7gp0sUc3rPM7RzJKFi96Gnn
	 ockZZYOxx8jtCU2PJc/H5ykQYUsVzOg36snhaJVnT/jVGi70FOJ8Tuyc4HKBQGx1bQ
	 p8Ja1ytdzduyXzq6AqBAjyeOGtOU8i9r/Hh0t2zv1iuFu5xpybQkINt29L+hkmLvZb
	 TyQ+2VEmmdRefSdV1wJBYTPhInSmwSAdtnN1h5pLhG36/yEohsJuyKCcv1rXefCaoz
	 BQPFXJlGyblplIRuJcBk+WaK9CgKLLU+xSQ11DwTnu/+QIwiKcuWo5m+4t48FaOCg/
	 Ejlv24F12rlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61263C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457349639.21149.12110649469840615519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9942b8c4eb8a59836e1ff10ef435d66e4cbe93435ca39251d82b6e8eedcf5cee
Date: Sat, 06 Jan 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704573496
