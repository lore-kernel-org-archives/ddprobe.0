Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C70010E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 05:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3ACC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 05:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679291825;
	bh=fFRMC1MmBX3AFDe2rruczq1qtX/3eisOL8HqJ8ZMK9s=;
	h=To:Subject:From:Date:From;
	b=R2EDeF3HIX97qYq/HxBs/mRfZtjsm39K8fQbmpAEtfEw70rpZO+9lM9nvW2nvtNPl
	 dMZ24tvZ1aUHNbVP8u44Mft5/bew4n/ZA47hu52VpGTz8So4qAWUcpqEJdAxWFtx/8
	 VWDFBznR4WArRaMCmWAKuQktBLkIARgHkW4kyMIWYgb6jGQNBBR5FC0QqREMQlywpj
	 GEkT7kSTu+4IbKcAE2weRoHPH5TMj6qOVfKYyzuHi+AAPlNEkBcj12hrs6CF7Y1NGQ
	 rc/wTjr2UPnUokQTltygInwzSDsEFJ1yTCCVu2la6jkBWZFy+2cPgYaetwXRQPvfAk
	 mTSUG5Kq562AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B242FC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 05:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929182572.29664.4310444979818147267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ed2dcbb0c1756a21aa8dc235789218bb090cba86a09e290602a08773cca0a4
Date: Mon, 20 Mar 2023 05:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679291825
