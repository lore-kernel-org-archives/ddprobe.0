Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAD67F5
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7E2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668221454;
	bh=vWmq6LDxTJbd6lI7NeEjQYZSZLZwTvFZMcs8b1HvRLs=;
	h=To:Subject:From:Date:From;
	b=CR3XLWotqoDgVA9ceufZgFPHIn1G1ucJS4JszUgR73aadn21O88T8wXECOTAdStTj
	 Gg9mcO6zPsb2EuId06wMdSPaLvFCujuo5amSkvcBueD+QyWMrWKzAyX9AhISrdTPCJ
	 hrF/KIgxY9kF7F69ANFGkevWcmjdCxph1qsI64hS770mXULj6f9Dcqt3lKCcT8FnMT
	 5k/SjITOZNdYb3auCF/ayNAVrebP8ugzRcNd3nsSc4/N0Zxt7XZNEaqCdbkEalVBHA
	 B9xNTghf63BFkWI4njspyj400HCD7zGnalsWUiYn8Ky/a0IR93aQW4YYMIgdCgf3+C
	 ZQOXoJECmCopw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519CFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822145432.12282.3232915811873450305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41601d803573440be607d914e5fb33f7eb21914a5ac1dc3c3ab91466061efcb
Date: Sat, 12 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668221454
