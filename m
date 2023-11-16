Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11573CA62
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4DuZrhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863ACC433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700135296;
	bh=vZSMTSe+0X3fauYzUoGPR8fyRPIn0pyVZRZXWNom1eE=;
	h=To:Subject:From:Date:From;
	b=m4DuZrhiG0eiaGkN5MurW/AR1m8DjYa8UIxgerrD+ZXlidvsc4jA4F17pIuLy8gwI
	 zqJ3U2lLbu1jkUiXB4+7iO0GlL90jNFj+Zj0SoNybxSQQnxWjbfqcFap5c3Q1Ts7pJ
	 e3j5VWSZ86sNcBiMrcGFsREUZDMt8IrjBJyx3mQ+ygFCmZ/0eE94/zGjGSa3muxkOW
	 Fshb9sQWIwwumT+WAeNKqT2y3T5DtxwbNPKJ1KrcSlag6OANUgBDpjvqZfQKvrY1/X
	 gBl4ftxmSlGazB88TJLveGfDWXjVL1Gj1FmzSi+G7DbXTnxiGHXnnrhOYexxg1PUyg
	 Xn+/ejUx/674w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B535C54FB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013529638.21089.15345346387549251705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ed6feef1fb6655c3584f4a4c4b0b2462e1eae20b8a3b7713993bf70aff65df
Date: Thu, 16 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700135296
