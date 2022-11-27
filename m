Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93282CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6790AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669570254;
	bh=2rJaYzlnKWZGogUngUaA9SjvOX/zYLvJfTKmcqyH2VY=;
	h=To:Subject:From:Date:From;
	b=Xi24JoEWkIVCFj9zmYiifE/Hkp+149wSEr4zxCW5VjJQPdHsH84+E2HLtcWN48gBl
	 LA2XpsTIOOcwp/kHwTsAtpUzN8hhtJcMgLTS1/NB1YfOv5cwCgUH7UzJDsv5J2dHyc
	 tj+Ylp6YMv5T0gyqILTS6IFY3fQk5LUh+aIWHA494ZFxFwIoMpRHSlfJPEWGfpBW+H
	 mxjtTujHQg6l5Ma37fxn91sFMxX8W/A45qkAkAcptilyfgXzXKqlGDKo8KnEA2CFnW
	 8FgSPldHmxTIiA9dh/VmiyF1TuI7JRBdnkXWYKUxx+XtZV/6i4uD8jhX8HVgntsauu
	 cTuSygxtnBzPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AABC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957025432.23876.15516389802327081861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646bfc7e207ecf1c1965e08c6bc827a51ecf08668587dcd9bff2da323d4ea844
Date: Sun, 27 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669570254
