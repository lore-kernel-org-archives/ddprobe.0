Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB21208C6
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1CfgTZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8110FC433CB
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699643296;
	bh=UQtiusQ4pfMgi9mgDHy7gUWI7mK6l4GEv/7WJ17mZco=;
	h=To:Subject:From:Date:From;
	b=i1CfgTZzVdtm9zJ39nBH81lxOJbVxfoOgl/IC1hRDBUtdAvufQAzI0pEFX+psmf6x
	 LFv9xONPbKTIw/1sh1z1t+z9sycUU7A+0C7bKO3LVux++erALiUMeUGAT8/O3F378O
	 N17Jg8hJgVGpxEB03/wf6ZAuXBZUPyCVNXxJE60RIOM/EKounPRt9YnOv7LcVQ+xbK
	 SvuxaYAbLjJ2yi1fmb9QUFXA7t5PpSOnLhpyYz45zGsCARqJDeuL3w5vK/m0BTo+HH
	 nc0x011g3711ovciavyxZ2ptjAcFB11/rT6n/6fJ1lMfpVYb7fcZ8X1kYBS0/fNfys
	 H3V167UzLQItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B40C4167D
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169964329639.20061.9301893979682171381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b081195b64c479e6d5043fc1cb5d2d6dd831a5f112b95cc66ed37f3528d6161a
Date: Fri, 10 Nov 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699643296
