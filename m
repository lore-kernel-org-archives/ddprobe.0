Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03837B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD6BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661430652;
	bh=Q+Lfe0LioePJxcaPrHEfALsjl0LMV4d/LuqZH0eAnPM=;
	h=To:Subject:From:Date:From;
	b=Kf3ChLkuYd8q/T6yRJHyE6fNj+zzaKBSe5cQGXvNemGhkpct5orXAKLV4eL9G0JB9
	 1EeodovLiT2edPaLjBzrQu15CTgLJGxMp2K94rJVSYHUWu3i6bjwW50J5UKIxLA4bX
	 jWsfFSK5hclXrxu+JX0bqHetOge41XSeFCfMbn5PZkJ6dtbAk61fGkde1OSFb8t02n
	 egLLK2+kWsYG/2XY6GEAo9fHYGMu59Avmrj66TH6FtKaUgYpUZBQAWtudmPTvAQAYv
	 QqeoHb2V4EHuMYEFDvl1ZEATRVcTsNHO9CecS4ohfhnpUFd26X1Xa2OB8dpK/iYgi8
	 G1KMqej5Qc3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500F7C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143065231.549.11407379071347247482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee2224fe74823bfcfed2d85b55573b8ddc8034dd3be1b510922c2b0190bf4f2
Date: Thu, 25 Aug 2022 12:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661430652
