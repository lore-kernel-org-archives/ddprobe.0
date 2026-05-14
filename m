Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9B33FF89E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778767834; cv=none; b=e4dMTLWdxp0jwJx9Z0VHfZteCr02ieKHaCgpak6IsH4xn78qozhwmTCyhDA3E2vkijGp1J431VSbnldB3pymYDxnb1o4oWzHQ1b1Ablk+Woqh6jFC0wc1dNn1nlYBnizFtNyhDGjoJNQaO3Pqg9FNzbyuafvQWqO+hDvBOFRiAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778767834; c=relaxed/simple;
	bh=mkY5wbfG/G2nUPyb19Os3YiPX9h5iNvlpBm2lmuB5IU=;
	h=To:Subject:From:Message-Id:Date; b=fjkjCOJhH/NzEHj/OfiOfxvMCMPKsldzUkTKEZSYa4fZ67MQguTo7aZNSdk8fY/IGJIfMwU+pKjb7n1LtE2eLZ8CWVXX0Y/8nqIV3dx5npGhEkIJOGej9PAz3MsRt8zmJE0rBR80bvJWeUxi4tBZ47IPVt+d2cvlBid4hEKYWG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQVJQUbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQVJQUbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BD1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778767833;
	bh=mkY5wbfG/G2nUPyb19Os3YiPX9h5iNvlpBm2lmuB5IU=;
	h=To:Subject:From:Date:From;
	b=lQVJQUbCnzt0GHXOoPyX4ETq2tIIVlEU6euswpvPVzShxii+jf6b+RSkvfF0RkRTl
	 VPWvQFS1WOaaPihPRx3YN4Jjdw86p2Vy9R8PL/14XoC/Btvy8Lv8WcxBLLSsR1CE2S
	 x/mgsE8hV9R9CqmFjv12/5adiKs8pqjMVYbbrVSnlr4YFYl6oMg1Z002uHND/k3KC3
	 9a6xLesbR8yFtSPegpFMoyLSzJMHB1q3tijYlAkMYLog0/QlFjTYn+GKxj32xBWHqd
	 +hKU8Sf/i9h8sFBXVuGfcpkKD7izNveaow6CO8UJgp6zfBatk1smFSAZODHWd7xEd9
	 4+c6aei4xFZ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4A2CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876783370.21485.12369507697589103841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e363fb3be56464d898ca696cb95d61801e89f2df2c721cc2b8ba54b45e986cf7
Date: Thu, 14 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778767833
