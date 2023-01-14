Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DEB369
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D16C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673664087;
	bh=PS3qdyTGUNINMhm6TSl1sCfURjy+2c22H0j/RqINW4g=;
	h=To:Subject:From:Date:From;
	b=SR9bp9/9ltcRiYZsfJta4Lf9YPtVwnqExFk0rT9/Zs/4q4AtAiBBIdtnfmue1rQEC
	 VQKsvlEiQsvprM/jSYjW8ZoHf+HPGQYugpziqzw42Zs4NYAsiwCqzuDChqKJeOpCPL
	 s5++ET2N3YECEH5w6vzF2zipyGriWyR2l2Q31RcqyGEFvfBLy69PACtngpY6mL1dbU
	 CzLJYGNg7tzaLxjtZR5FLYj8W0TUHGp/oAntQwdcLwp/mpIuniE93y/AzGo97EDiJ2
	 Jn4EE5hv+FN61MBd/yA3iuITUciTC4s9QEsgR//+8wl2rfi3ap1uwr4POSnKZifRYo
	 WYe3J4pco0r5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69466C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366408740.24167.1167081652520284384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c994a2a13da6076586e0e4f3b2dd47a75f52d579199f1f2ece86f3e411cfc6
Date: Sat, 14 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673664087
