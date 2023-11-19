Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548810A32
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgXzeiag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87009C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700399296;
	bh=8Q86lGNUG7WnD029OHg/tzIVN8I9bjDFHvrBu3Wp7hQ=;
	h=To:Subject:From:Date:From;
	b=tgXzeiagpRxCZKDorUR0YwHl+cGMxadErV7KRqTnFehxTmuuuUMwo/Dk/xPmPYPuZ
	 hjBf8Nt0dhkuRdKWEDoBPEgFXZNx/FZSw0hq6Sk/4ybCiJxs5xidCspsdyS6SlmJ86
	 B8nfgB5rv8YMJespmqOT7nTb9Edu17dtDUIH2ij//tRBizJF6cOh+D4Z8/EbIz9PM8
	 wySiCyeRZX86NyEq9bQEceNu/xHV1ehbdvR/vV6gutpmsAVC80cqStJGmDo/T/j89r
	 ZDT/Ru6hr/zfIjdPtXJM/nEP0MADyLF3KE4xAnEJZy8fWLlra+Ijo7XREFdvzFTWt+
	 5QFnDw7GgMIig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F00C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170039929638.8327.2397800908925950588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f124ebc2003718509f2ca93664eb7b7b0ff88c0380be4f36f84c0c0c77c1935
Date: Sun, 19 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700399296
