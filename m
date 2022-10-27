Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C976B1C04
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6DDC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666867254;
	bh=sj/DezV3Ztz2Q66cBeUxwpYOkhTV/FQmnI/TGVZAQsg=;
	h=To:Subject:From:Date:From;
	b=KqQ5vsQg46MSL1eza5bmRw+w61dpT5ObwbO6lZ2nnZf5Ydvj6ivAFrs7sQBFCQ6lQ
	 KIm7mLFlcB19l/MY5MCN+FkFSpjLnRcfEalXjpbNCo+n9ibSkCeBMaJgmZ76hTHW3Y
	 mDy5pHl3jHJq4ehusZw1C5mR+ngPPMJmBPkFC3O8ZYMo/fAbQ28Mcas1iDz/bn/NXY
	 OvyT9yTfiVR2+8iSjko/eyVJVIpUa5ACRm2NKdDKozPxsmgfI/92VnEv1kXTtYttT6
	 ABp7iwmoXzJpVMLg629FtIEIRoioxJqNAB+WrmusN3v4q/Rq4kQo77LibyprNvEWIR
	 Ekp8+40wm5VIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54723C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686725433.23198.17657315101653593648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90e381a1ac4faf81dd9ed0481b3927dc300464e3d694c1a21ddc6102ba93806
Date: Thu, 27 Oct 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666867254
