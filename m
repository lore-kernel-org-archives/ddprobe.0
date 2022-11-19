Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC52A17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771D1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668817854;
	bh=R7MXBbl26BG4/XBy3qX1dE8cNnWO48/edweDXJ1Iiao=;
	h=To:Subject:From:Date:From;
	b=RSRBxPC8XdVN3kQ+dR6ISktvKZP1F8zHoM+5CsdRNTA+CdgzfAlTUl0LqPlDBYP8h
	 njnKqGqbsyQK7tThHDqvO71VIO8HRmVj0pl1tRmH+bbrXn+avYWkE2vHZTyeM7qOTv
	 kE0huSP0EyW//TMXoUfpSIGoo3dWs0JsaNhkriQNPOegSvkjFbbIchRs4S/bFMHQ4M
	 vASvtvMia9z8mx28zmalc9kbBuuViU20RmDJABn9GX12PELY/Mt7iqG/HtCevfL5xn
	 BIG8Cmjy4JzeIgl90+AuI+4dfdbQwS2c0ykJOHwxeEjb5JBwzaPD78lI8dU+FgVRas
	 QEY4QGY7yLC3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5311BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881785432.29043.16113613074577100468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735063c9816dc4b11d51bf88ddc63092fc1778cbd287b326f93b7a2d1899a28d
Date: Sat, 19 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668817854
