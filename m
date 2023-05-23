Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487CF1F19E
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02542C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684858986;
	bh=R2dHHY8FouGkiqb/rN1F25KNDMiLUyM1mf9e4BT31SI=;
	h=To:Subject:From:Date:From;
	b=d7z67L4u++j+XyX1SFW8IOzvYxxxOXe+E5kgQb9K5fUrJFpEtI+UbxtGP0xWuZT4g
	 N1zKV6gnczlEC6Pd4O+m2j3UHCNhrrHNQ/BOWxpVluhrbvagPMbXpB17IGXA3iLdcv
	 mnwsMZpMW/i0CmREx2pZDgS57MP6G8Ps7bvggnYnaR9Y+qaYMcx8jQEIVe1gGiH3p0
	 hJKP5SLD+nGH92CDaU/xoYHDvRsKnVdDUwJi29FE6mMCNR/lU7QvuxopAyureWG5ZB
	 0rP9cNcrogVaEiFROcgQ9S6vrg4JM/uMeGk3q6kFBgdWvEiY6r7yjRMgFSyzqUYA5O
	 jAwCxuY/3SKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEDBDC7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168485898589.29485.9209923802142362165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0fcbb8496b7c52960365299dc2671d1bfd67706580ab6efad4de0176272a2c
Date: Tue, 23 May 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684858985
