Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3BB23A7
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB00C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666160453;
	bh=2ZQkJ9rqIIUPXCb7grKl15JAhhit+tQZMpaSsEinOx0=;
	h=To:Subject:From:Date:From;
	b=NZHcHbYmNZBWomxx2kJogKdsjYCtnWhQA4A1BFR7IYZnqfYgo3s0uuBvAonQJfJb0
	 jW5TByYt86NMOFG/VxX0F0avc71U3zIjMY8fZ0U3DOVcKuYQX3p1p1LbJE5M9yYNkR
	 kLq3jBAOFEefXgb/boJ9VApoc+aPdMVC9MXn2REPHZoMjBIbc8qEgso67LplJr9jjQ
	 TxWkMmGYOAQIRGU8HlIG3V/Ot1EdP4X4lI5doW6lFiWQZrz2ca5Fusc2bT72xNWv3m
	 Xl1vGhRZ4ALeVr0Dw2mgqXBsMVFKw+7iIOQ+5rEPalyFkvoeaKSH3qgnEsJRg1Y2Mj
	 5tj2dHAU5x68g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E3DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166616045334.17621.7804189230065300030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335cd8f0078cc017b87b9c55c7cdbf01e5be39ad553435e37c7a9bf0f7693583
Date: Wed, 19 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666160453
