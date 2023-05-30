Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AA8134C8
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F8BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685450585;
	bh=ZwXA1B1mmrVIlm+8k+iW1lRGjTlzdGNZU7xA/Simrsg=;
	h=To:Subject:From:Date:From;
	b=jDtUGOZzLmw+a1P/1nkc2Zts2yaCoFP/vXuS2XjI1dwZPTfJLSNSVgqh0j8M9M1ln
	 ourCUKbFOSK/5zHqIeg2KmojuoGExQVPiiE8aZodhnGk1gAGHmIBzqHV5v+wkzq3IF
	 IsG1zHfzaQa/WXu4URIb+Njl2FDctyoKlsn+qXqjHp/tx/ENMvpFnhO8BZjtO5SRpw
	 H0jYz/FGgjyb1a09TQhl0q+Z3XNnE+gpCh41tq763TFRct8pOF3qYLaMIT1aH2gEzV
	 ncCxwkJ2/xk1kkCTkqifcsdOqsjC6g6se3OlFSfp2aiQaAMqRq4lP1vvW3G/6nirZN
	 +nVEwKUm5v/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B6EC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168545058580.9590.6459252744365564457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f00a03b3af4d1eb7a1de2416ff9333af7c95fac437077e53e18e74357dd0c80
Date: Tue, 30 May 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685450585
