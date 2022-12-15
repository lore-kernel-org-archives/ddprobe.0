Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C1E2CA2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80588C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671099687;
	bh=zS5+JkTMFUArevl4AcPSkoUWXbvoSN9mVmXiDFQiEvI=;
	h=To:Subject:From:Date:From;
	b=Mc+MuFI5EH65rLU+pAPNRZvRxl9+WkzockHoSxy9M3JxopSTUulrEKc533gVHn1Go
	 b4IvFSGWmkVJHM20QHRib5l3xy75JOVXJYJ2BHmNJ3xbDRElKjkOmijes3N21uM/13
	 Lt8OPNq0hdQJ6gCdcYjhefN/VmlXMe9JPldu8dGb17rBarjHgBjbCaik7780BICv4p
	 sdHlyIcUEF5ZR++sT8dkmzTRjYjKSF1auTQH+1GGajDfxjegdtSyEUrrpPE8XYJqPp
	 oH673tRuSPGqmtk/XQZPeOJt+lXY1Lbu3LtOmEPD4LVNmBqhCAV7HeV3NwMXFT4gJG
	 BKk8VU2jmaHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6255EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109968739.28971.7806996942226360860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bdc99f7ec1bf4445afb37f85e78e8e3cf7663c09533a513c971ddd50061205
Date: Thu, 15 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671099687
