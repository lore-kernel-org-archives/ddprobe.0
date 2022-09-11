Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3A47F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A4BEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662855053;
	bh=6E8/yKUJyjeSXRzKGrTWz2RzLywCSvbG1yhC3mkkPdw=;
	h=To:Subject:From:Date:From;
	b=VH4hnZjTgi7yTMr/Hoc2UUxr5YHXJI8X51T34tS90DaQUR6XvjPUEX7YkTnczycnz
	 YI1cSqMm3Aj6anb00nEEGTzRguZHpycMbSxncMZxebBjOSfhzyLPWltMWo4F0svdbi
	 dv/VZCGnMCaO7E1tU1h14BHxpOfzvtugKVIHExBmLYEQNVUXx0S2uQLlRSl5L5YOIi
	 qb6mJc5INu8+JGxEuJ31zop2DtqyLEhF/iPofLWq15e2Wze/tuWmC1dwm17NtY6w/F
	 PrFJuZknmK6ARJyc2LXwz1ULvX+kwrcHgw7o65CzHJDnYpIzqMmjuvMgJA3/GRkyhR
	 GlaoxRHsor4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516C6C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285505332.24566.13556034380013281670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd1b079bc3a57253a779791a89d72da6d822ec2bafb10cda537a2f0226832d2
Date: Sun, 11 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662855053
