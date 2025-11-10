Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446422ECD39
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762757994; cv=none; b=URyLfe1mCohnhdzMZnBD5TMJBaRzW0UrhgseGx3knqGmj1T4jWFxxx3e1vF9SNGh+3F9+rJ6lOKMZkP2hEy9qeS6kHq5UFTRxtUoXSgNWgSgxoLe348/DVGq5TksSxIlZLiK4U0Q7iZJvCIIrS48LTxLYLHNrejJrZdRyM2f9qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762757994; c=relaxed/simple;
	bh=2ii5rdPcrQLsQEv+oWHiSAh97d4f0rI0fsmhq+MLnr8=;
	h=To:Subject:From:Message-Id:Date; b=rI3qD1GT6yxwStIZNWOJibpE6cc45TOtdvyDtt+21hev4LWutJZWFGjAStFU/KjkdbqLDtwKa+ceg4OFSSZBv1xZWarNLBRnnTDMQZGtj6G02r3vTCc8vsREsfd1Xl7hWm5QOIXQCd+5JsLXIJKCL8WgHG2JqTcoyAdL2li9kuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdpVP9hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdpVP9hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B22C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762757993;
	bh=2ii5rdPcrQLsQEv+oWHiSAh97d4f0rI0fsmhq+MLnr8=;
	h=To:Subject:From:Date:From;
	b=AdpVP9hSdQb7dhzcKKC0g7Mw8dO2NKf3UvqEeb1iaBw3eYKymmfQpbphc0/V934uL
	 MQpDJ/Sc3vQhKCC1yhVXp3HsQc7cTIzq7nZjPJBF426hU/Tr6Dp5dBjz7RgG3g39Oy
	 QAnpbTn/V8NDjNhEUITiEcWs7fUFoIzWHNjncXpPrrSy12ODB2tsTuWO+jG1l6MrZ2
	 ZZWW1usrskM/4/9T0AjhMLWZH9iSHEYL5lcQGIz1E6Oj5pXW/JHTMZmcUZPNGa4ARu
	 Rsm1kMPHl7PGDmBOsbe4bkSBuy/FOm8TUTvIzH9IKCyQX5wVNsz4EFU4dIvewtKaqG
	 X4wRKEzls8fAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB0CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275799357.20375.10244230593751034424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ee3bc3f566ba83042a380344e78e79e4a3810d324de915e4d674f815c1c197
Date: Mon, 10 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762757993
