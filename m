Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D7179EC
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:50:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75B0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687020608;
	bh=Er/GM3/Naf8wR+AyfyhE4hcYTl3OX8AW37f1SAqdKCk=;
	h=To:Subject:From:Date:From;
	b=jI2e3SwXmWvd7PF/yruCOwxuhTdNB11KJmPn0NxUxWdN9dR0lQsiGii9e4UHlEavQ
	 JWzsNA+Q76Im+3x9Z80XRgjaX2u726dTtGBxi84L1Ux67grra86+e+y9cZXdVMCvrZ
	 G9VpakIJEWbYomv6eNH6Q/+YyxEy/jRYgD5yOsbosNjeLTcnkRIRtcIGNSze2YQqW4
	 p8q4FHilDTuPfuhRYYaYlBh5LPC7vZKhtSFp4XywyJ60Vc+8xyHFSVyiarGMPuTTOn
	 CiLNe6dg2UFTn/leSO5f2y8+cce56qPUEYFCGG81SnANxGg8B3g8j8tH1j6+9F7Kz8
	 HhxwYt7jk+OCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF25EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702060876.17577.3239578545008845639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20169887cdf727d46a01c947e28c8c9b9a3ef719b59a80fa3777a73434e545ed
Date: Sat, 17 Jun 2023 16:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687020608
