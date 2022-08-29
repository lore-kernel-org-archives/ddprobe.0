Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F6A7C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7CAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661742652;
	bh=I8fr0m9cO3JSvlxzASrdbvuTtv5Ly03GHbf0eE4OOok=;
	h=To:Subject:From:Date:From;
	b=NdWHIlwp/W2eS2LlgVFq0HsCsyVwl/DfXtc/gA3fD1SNFqF2CAWgNpeXHK6RDvS35
	 jAzqLFmL5eB6hw9693tvC/DV28dVqMxMTsIhX7sx2Wcu6+zytBY5w+siUf+K0uLAnI
	 /H48fEA/7X/fIBIjjHv4E+oElMOjZuWydIVQUG4cZDWEN3JqBKcEaBvE27FZHgaJeJ
	 zk4rdEZ2LOFrUZ94FdLehsvduK8xl2WluH9ZNPylHVDxNtotvSqOAdJVOBPdF2uhfJ
	 yEldMG3zN5pe/tu2nZ2xNAtQ+kz5S3h9ZpRTC514K4a88YKA47lbxdAhZk7rHxZqQx
	 9KoAC7LYG4zig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CF3ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174265233.19097.3159952507615550967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e432287c104a6ff9545e9d42bf7816577303bad0faab75f72ab338d53a01902
Date: Mon, 29 Aug 2022 03:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661742652
