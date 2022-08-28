Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2516184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6897FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661647252;
	bh=iEcZ7l63yYgCDVy6ekf7XWbJVjXh7V0Iv5mcDg6XWdU=;
	h=To:Subject:From:Date:From;
	b=rfoOsF7vXEipjSoKWUQEmhlunRpGg276+oQnPT2hy2YT2nveU79cwMpASZPoZ7w5c
	 VDHAOVb2BnVOjwjUfxtRbPZLXWAEuIhKk7NgIJFQMd/x9tYVTtsl2+cj+ud8CMSg55
	 h6ijBs+O0Q6ud+sCgnhVLUPy2XRPCPzmKKdGFRwfSE89MJPL9AJAf48d5CxSByRJhU
	 /DQmAIrCX2X71xGAmklhvSGidAPn/5sMonhnEZL4ZadHoeGoVt8TT++ORMrkS3nSyb
	 fptRwg9xQkcrXrUKXD1gidlT+Dcxrvut58SjB6RQKZVH6JwXC9mlrOlAX0aR+igMsb
	 iT7UPznx/D4vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEBBECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164725231.12089.12448105236809896923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe35bafc70286b0820ae13c13aa65918b95225c9d641ec11cb72cb649fc0c6f
Date: Sun, 28 Aug 2022 00:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661647252
