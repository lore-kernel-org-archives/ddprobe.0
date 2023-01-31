Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063579CD
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 14:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FCBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675173785;
	bh=Wqby/MIpBoIhLGIwhr14hC7XUaIGkvXXfwFW6Cvsv0w=;
	h=To:Subject:From:Date:From;
	b=tQNvHEo+T6qYkR+nVOENAmiWA2BhwRelodePUpqEGf9v3WZICBqbRqYnsIilzYm2S
	 pw/VGaS1RVe5058NnoZ0UKBKl5YS3h3s1PZZvmVnKkvg071lDXIzcI2lyQyhqVusNf
	 wOU8d07RB+0e007pv08y9qYUhr5HtfI86v8yX4NfoX6+P9pskUq33s0Ts1aaUBGWbJ
	 rgGaXKm9E61qSAR0rTQzYzCloHmoWWgGiqDFMu6w09wy3SjcQ0L9+weq1T+Jjfh1Gr
	 sCQ05aF33V300w16+PdzrtCS1ds9nv3OugXXam2m6hVPitn3wV92gvQIs8het4puuZ
	 TfFnFUElo783w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D66C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 14:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167517378573.30929.4201642166684501803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bec21f06cd8fc6e227375dd1d839bb89fabcc1f8c90d96574ff1881cf789a8
Date: Tue, 31 Jan 2023 14:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675173785
