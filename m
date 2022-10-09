Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06B0187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68EE2C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665296453;
	bh=mndDqL/67O8J2P38Ry3h8VydwCp/NOS90O57WCRl5bA=;
	h=To:Subject:From:Date:From;
	b=uQGwwkYlznqEYnAPITUI5XNCHMTn2QsZDANo0JwuNj1eV/Ld+JZV2vChy7dxyFiIe
	 rY/8McJJrx+Lno1YeyLUq4SWVOA5jaaQiffrJ8kBXUfbXU485FdEnWmk9Pl/2vWiFz
	 RD+pPB5ESwlGsNDTrjk4RqGn5vscrT2yK4PBNCqEsDvfqMCnsf/eScFeDglf922uKB
	 F8M5OTlLDUcDNVZ+QFHePMpfb0WhCxq9U+uTSgXnX5p1noBq9zXmRvsEezU/eO9J3R
	 NCUa8Im4vPqcnXF6aD2d7eqLekj7bEBkvxjkVuK4c9MWRQ2PGYCTkueuZZcc+QA6UN
	 arW5B4GfX86bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D0CC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529645332.7128.4309349342435333791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c7eb76e18b27b8201e64e0f5570a15dfc4a83bb83d15a357af135ca6db26c8
Date: Sun, 09 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665296453
