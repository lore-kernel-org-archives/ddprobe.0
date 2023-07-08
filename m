Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0F02F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1200C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688809628;
	bh=b4Cw8ldwYLW0T5w1ZCKUY+rBiSk3B0aaKeTrEW6cMaA=;
	h=To:Subject:From:Date:From;
	b=cdTkSJ/MKOTc2goX0n1dhZaxmuLCOjdCEw47DbD//tGGk/pLh+/0ioAHqblodu63f
	 qCB//HbBIE8NIsV7Z1dIcV6cbYEtknDTuhZDtkc1sHR40UgwtO21Fz5QC3iYTprIij
	 TWVF1gHe2r06Y6In0gfyy67xsnuozSsKzyjTdL1U6nvxAsQPlLvqAUtpdhbVzZCGRM
	 7OuJXTkj+G7YBYZVT/wBQE9OSzA6KCCMV/IzAsC+JgmUjoxSEO8iHyPByT9Bxt5HvE
	 S66VINqzRiRYuu9znIdKDfWwk7rkmJlEIlOKr8MjkEi7Qq9UWEGxRAdcY+0XVNjPJo
	 SDrx9WbajlMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9927EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880962866.22460.7838395251457417378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfb15e14a786d1c4f51ed5a22713cc0cdcfef024739e6d3f3533079ba1ea7bd
Date: Sat, 08 Jul 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688809628
