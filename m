Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2250F23C9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYxmqSbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8280DC433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705299496;
	bh=WTIqAIHq0aTBV5vtrIN0EduT2Pt5R2QOjyvwSn0g7gg=;
	h=To:Subject:From:Date:From;
	b=YYxmqSbqi2hnDrcaBH05iBbX5+DqFoLvPx47f//n98uMFB7AYG7t5kbOuR4b4D6b5
	 N9fYNdRTuctejKoIrj5c3o36WO78LwV7o8IwEqm14ByjnKb8/8udk+ZW9rFfdoNb27
	 QpcZQyp1WScRc7CDl3N7jfUmItAfekBallRYJMZVIqfJthNTAGtcuim6YopWsqhD7p
	 k48RzOD6rhxTxZlTkMrfG5ldFbUYd5fFMtnLyAxiB3ogTSYLm2eKVMpx8XaY+LHKOV
	 Y5J14dSE2waWuKeA9fcbG7hVohiNhdg7tMz5A4TGDOSabrvHGw+W6Tq2FffbsftaTP
	 r+PHv2eoofxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640EDC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170529949636.15590.3471526366157133296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01f27a127d8df0b04098fed782c214ef92726bbdce46d1e2cabf8032ec96a38
Date: Mon, 15 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705299496
