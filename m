Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD7C4C6D
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+Tw4OfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020DC433CB
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703625496;
	bh=SBDGg5SJ2O4wEDZ9J05i/28ur+cnp3SfbBTbBEgWexw=;
	h=To:Subject:From:Date:From;
	b=a+Tw4OfQLQday+rMYjHRByOVuMTglbuhVmQmI3VI8g7zQIATFGZXtQsXIigcsUZSE
	 xBxuatkUFpoiItGMb+7okXM6pLFJPHXzGmihw0Dli2wXfqDERJHFiAfqkIsqSCh+/O
	 kYsZ4PEKrJxUK088q/tvUFASsnxkUJyGuS/nNwhoBoCh/fPio+tN6OQ533Fq8j/HeS
	 s2RLIM7GpBal45+seJMDcGxShinyytIj/JxnqnfxjZjaxBPBVb7OK0aIv68OXMoJSc
	 KicUNUpaaoBHapD6EzjE2pJPMLR9FLlXsxZoJecztbmFqrnAoNGO2Kf/qoVWDUhJV5
	 S6Woo2nxENpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78F79C47073
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362549648.13211.11422061616624222413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b32bce834a70eae876c12c78e71214825652e47d818c6dcc4ddb78f539acd6
Date: Tue, 26 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703625496
