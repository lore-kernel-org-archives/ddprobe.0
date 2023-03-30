Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38940C2D7
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 05:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D722FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 05:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680155945;
	bh=4uk3cMFXLfyad7MAtp6/OaWGyO3kQJEGu3ksD4C07UY=;
	h=To:Subject:From:Date:From;
	b=RevPH06TmHNTKxgs+Yhh5oHFCz1QL4XC2wzHxW4BP8nDg5RYWACnTBSkAJwV0kUaf
	 MFYCNH9Fea6jNz6ZZOgyFq5Xet8CKyaZPPRK63G3RLh3XFZAbaKmog4M4Jo1/GwbaF
	 a6s3054Cr3auDqslUhRZHJCIfKwHSLUIVUTZtDaqcVrkO+AoFh9IUQB7DKcgpC29CF
	 iWIGLSH/hn5F5uZvJi1wucKzojjCPIGRS27uWXTT+vvDd8nKO3qIH4oMY2Np3TcEDb
	 aFc282orxu+mUubD4guLCbTuOzzANXXBwOOru/W+Fyx8XkAtrqvbg4tSpfvnW4U6do
	 P0l4PoQWJ+bgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEE8C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 05:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015594577.10584.16830958013937913512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e3faf72a3158d6337c398a4530159497ececa20ab8e3692d834bf3209e2475
Date: Thu, 30 Mar 2023 05:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680155945
