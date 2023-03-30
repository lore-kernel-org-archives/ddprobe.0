Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7D39455
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 20:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18047C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 20:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680206946;
	bh=zMMmQhcMvpdrbkp1SXPTZVlcEIu/cfrxbQ0E4u3h2jk=;
	h=To:Subject:From:Date:From;
	b=k8ORPALJAQPXSX3lLaBfml3gjYHdUa5GqQ/9pxzO/DW1CKfjnF9E4+uCmXy6qf3Gg
	 2zVnkNGYE65WHyJ965Tv88qRdnVeuNgm0g6/H7odyULePnp0UkoKtWeRBu7xp56ljK
	 LO38D/Y2j16Slj8mANjpo+nUyU6T8VvGCjMCEqYPJa/rdt76LAOr8Zc1R+X51/fx3w
	 Ma6vYevOzMKD+jJQakUeQihxDi+Fg15AohHQcsT2qy6O/jHbVkAPPDODezbJ4ZHHQG
	 u+C7Lbi+3XpjLDutOnr67cHiO1AzxMGLBgYKNPLo9MPFUFSAn/W2l6jiiwXNMa7GdH
	 49xCn6EGXD0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E644AC7619A
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 20:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168020694592.2115.9059167505713645284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558ef4dc2f621857c2a17c193cee0b629b1b44d9d73f79752442509956b0b223
Date: Thu, 30 Mar 2023 20:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680206945
