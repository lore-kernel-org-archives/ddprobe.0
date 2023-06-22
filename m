Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481CB1E513
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19DDC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687440788;
	bh=wuxz8FvujNMycaMA55+iMUvLUslm1nQoFhqm1aaWqg8=;
	h=To:Subject:From:Date:From;
	b=TefqzkdXlMUDsrVCzxLRoJ4RXSMWSTA4vUdbdnHLFXFeHgrPHAgY7lDVqq9OuulzT
	 Jp1pXEbtVzRtTKIvC92GdOrk/J5jJwhO9pvvzYMbm/glepNaFJ13pWTgoSIsh7sqE9
	 BiWelpPycyKllxkhrbHpbkF8bCIz4Usrou/rRN6ZCU848w29k8ItOfEqDXpda/aOVu
	 f4n+xlYNeLWCzteq+Gg6rmlH3KLgNx9MzmT5a1sIqHTq5CrkvJA1+E3+e4UDjwDfTV
	 TEa0X5XgWkuVvCPQaAEjQG8RyDGh1PiQQUIkoSCi6S7oaU2kXm5iniNtMTmS5eU+zy
	 w6Y0KiIRBHKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BCFEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 13:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168744078866.5704.5844679968582092594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca3805f86597c2b88ccd0f7ae6f87dd7acdd4edc17ca2514333b0b61348760d
Date: Thu, 22 Jun 2023 13:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687440788
