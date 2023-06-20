Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BBB2AB32
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F874C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687280529;
	bh=Us1uF3uAKB3EappARJAHV0uV7ukAR0NwPd6JxA/Rc94=;
	h=To:Subject:From:Date:From;
	b=fa38u7QeZVhNkY5JTnEa+f1ru4hOiHt4Os3It4ypztpous3vNY23NLOvz/dAFbh00
	 NwR317mGswUv4uUVTPHrB8/NEC5NQLmBdEHB+nLU8EJlM2Zuf8MpydcuRmBN+/Utln
	 dehiUkHrIncS99eXr4l+1VCkJQ0uATFDFCXE6Tr4ax+Z8dgapo0FIZ8M1kZv0jBFQT
	 dI3rAErXX2BalPURuHxjFCm62ZgmNk+pTDAgGAzWTPXtbd2gGQGcFuKDScGqhtVTKP
	 fovTxxckf5Xc8ZNrqINlAaOqMbiGndY8I9pY9oKHf6vXvTYusZR5OuxpjXAh1KJAgT
	 ZesUC1LlyoKfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6DA5EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728052887.26378.12038084967825589352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6f62204457792848c194430b106fbaa366c0163d7b81798f913a5156b9cc08
Date: Tue, 20 Jun 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687280528
