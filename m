Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C4617D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5A3C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666330853;
	bh=Je2NJP+6URzfoVdchgs0jcmsLYD19n0jSARN+DEEEGw=;
	h=To:Subject:From:Date:From;
	b=UMSM4o6E6Uz0a6O4EsUpvlRtNoScV+EiEP85X1m92wxDPYkcz5lt64FAogRlUp6AG
	 E18P8oHPUvnZkoJ+gvjPpR23jdGAuXYe2x7sYmMvXm0cs0zYeQLZbsrZQD/D4tecIQ
	 iS3RuGawlYdEYFAA+JomXkApr7ghyMm1PbBh5RSLGjMRxkRrsOpmkpQgzUmN14vTnF
	 ujSlqqqSqEEyhCybGr8Tgj4PVRSUbUARHqpYeUGSsH+J2SH5UKRYW5Y9wLNQOIc8WO
	 1YqhWTk+Kn+14eQbUy64W0hTAXg2fzSaLwmicVpK9yPyvKiMus4ApSLV8zgYhBnVeU
	 XZFHC4HBF8cQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5215CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633085332.20342.8502192480461330027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac22e66abed812283e4eb14c1bb633048448ec505e774f0ab18ffe12c445c70
Date: Fri, 21 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666330853
