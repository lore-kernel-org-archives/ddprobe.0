Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D577F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65C82C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665944453;
	bh=piU/uTuXSxj2iV0WQCMjlJm9aJfY7lk5HK6Zd9Wf1GI=;
	h=To:Subject:From:Date:From;
	b=SPbT6Yr0JomGHTXz0kT+gup9ApVuH/bBln4eVzZV+at5WR6irzZHwxTVJajq12cEE
	 vK7wIxWdM3Zn7UtkfxlThufcPVyx5vm+xkRF0yT0KyWrcmlalXowKe9l+K6nLUwwNh
	 52/Ep76h3z99Y1CjYkDaCUHcce6kR49+fjjjdGATZJmnbc+Nj4HyP0azEuWolCBGQR
	 B0vV5dJDSrgoCI0Ro3bx+7mRadTLDxnh7qiMoS9IK+atSpx2v0N0oGk4qnlOANKPW4
	 tn8qhZcWjoJk+11PBcO00fZby1clIf0Xy5ahrxNKl7h2arbkn/kiY5+iqX8kv63f/K
	 F2KtXr4KiTarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C69C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594445333.19600.15497782681750686027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12dbd95fdd79cdee6c45fecfe9bcdbdb0966a684302237050e6bb4688204f0b
Date: Sun, 16 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665944453
