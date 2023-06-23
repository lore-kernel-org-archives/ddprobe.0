Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F6B198
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687495388;
	bh=OlnoqUaw3WvbWwQ+oxBRyJEOGCw2BVsOCZyzJc3/KxU=;
	h=To:Subject:From:Date:From;
	b=RbNDM/Smb6OFF5xaZ6/1gpfUtLW6pYNQsSunkvWcQAi7bz9RCltvkeCzs3WRbSTbQ
	 3JEmyrEnrAELZs+tL+n2UHrzFft9NJATOXjmDwOd+iX5BNO14GrEpZD3ktF0qtLyMs
	 2IiJbb59wwFEjAqyFsB4y3dlcaa2mu4S9rQbb5K4+ec1364WxgausItWTwdLb//9Mf
	 SgZh+6WVr35l3LFgcXTsg+NWAy/9xCWZL7WlXwkGGKnXO8Nbw61TOyXo1Vgykdb8Bp
	 qr/O5fZZ0gQJTCXlq9NPYJkFODQ79FCPu+Jf2a9ullbsSVGLU+kJ2FTxaHjaMrwGxb
	 W2tiAe9MJuwyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB981EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749538867.26271.12028870104553180576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4194076792e8d1c0872f050e5b3b9e4509e83ceb1d92f54432d95b9227cad339
Date: Fri, 23 Jun 2023 04:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687495388
