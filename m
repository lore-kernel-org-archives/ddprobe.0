Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F547BE4E
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWricv6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883CEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703966296;
	bh=9XWii2EXaQLMgWy8MaPqd8JJAm+5zL3pmmF2+olfyxE=;
	h=To:Subject:From:Date:From;
	b=kWricv6ub2JVFW+lNR3YTXHA75EU06VomEeTd62pFi7LlplG8pDkDlXBAC7KHMSOU
	 yU0W3u5YzpDSKqAIaPV3i60s3E2Bjokl4/li89ETZyTb9W8ORp03okytgbGwqZpZ7V
	 mB1GnOdklwrzEsCIeztUpxI5eXuUeahzYtfo17S/VzPOWdnlBIT1Hh0aA46Xp/2mL4
	 R6iBwGU7FHYVFkqo0u9lLKnkpR8LkUlh4rc2S6BZycFHrrrxEQ8Tk8OIFWa23rT+g6
	 TM0RmVYWglXSPGX8xnvn3VoNWEZcX3/3J/zMY2MIrsR8tVbUphkAzlPh96SY0tlnRD
	 qttEsbp6wXJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D5B5C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170396629639.2584.592667548547258157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7955f4928d5fdc7d1643bd38774eba52748d30eedbf76d1c6d03c644fd7e461f
Date: Sat, 30 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703966296
