Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A360AEC9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20D1C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687039208;
	bh=Z5NhUS+TO+A1QWx34hKayFlzeR3w7eoO6z4vdKDIBYI=;
	h=To:Subject:From:Date:From;
	b=nMV/65e+TrbDrSqUm5Oo+an5vS2EBjyRAwzciyYlv6uDGKmx9bsLdXJXcOCLjDGLA
	 3L45bqa9ybGC2XPkEV+R+uhnPv9sUoefnJfW4tOpV1vxloM2mnYWD/7ND3PiVaEUSe
	 WeNm2el4EsZMdInDMgfHd43GdmXT+m6+WfJHercwRufwPuFSthzDPX9R5PIc4Eld9X
	 jWMitKRAoCE0TpIyAzOhsJ2HfmhWctSBCEUZTBpvw8RKV8ADAmkZeVipiURREs//Q4
	 nMmlljqnBZyYCA3H6PCh+hIHSIyUIs0QgoTEdGeFhYh/Q/8wn9/CTcQGz/uZCruS7V
	 g8jL4gfW6X0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2413EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168703920868.26943.628199747681643144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aaf27f05b77705e4ed524d23931d040d800ef81d1a0932249c9b1b0e06375d
Date: Sat, 17 Jun 2023 22:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687039208
