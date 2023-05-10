Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F59720B42
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ECAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683723665;
	bh=p2LQ3rv2vJtY1vdx0GgpDyMIz0hNklpGEmJ9OiwV7UQ=;
	h=To:Subject:From:Date:From;
	b=nu5hq3l4rzhMtwnO8ttXSCIet6AyPWBT0vogxnevHLiWkG/swr+e6UjD70YnROEDs
	 SiO6F0gc+nswCiS4z4tTZ/whOjSqfaPOEvtDPFmJTR2XmLBAGhfP7OFii7Sa66cPSS
	 cyLuhjbUnzmgHOHDYLbr0zqyWY7jCXq528nFJW2sV7cTVaMxm5KjE0xDr6FmpsOhsN
	 aPpX2t+Bd+73DvJ4E5DSr/ITD0SjL8sLhSYOohTDhSCYxXXLxgrphtgLgx11YZYBRz
	 2uVfyHBYvjs14+6YOD1HXWwiKA6nXIqHvr27WU1imyC7dRRzN16o3rgF9fEPqWORBV
	 B+kVCJvFUoQsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF87BC7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168372366577.18469.9450787313801929833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22148362667e4fed6b520e55365eb2f3c4f2c96bd049ab1af3b615f8324b1c5
Date: Wed, 10 May 2023 13:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683723665
