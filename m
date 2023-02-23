Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4BF2C9E
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 16:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC31AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 16:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677170105;
	bh=D573iUOwNyWqz1DiaCmHWlvbd0LzztEQdC03WgyyANk=;
	h=To:Subject:From:Date:From;
	b=iF2KKTyWHHZNphC83jiKfKEHyEvqoB12zOMTDBbAqf6m2aXRhU/03i0mV/cQgkdR6
	 neT0beNFEyriG2GZJftoHV5grRduQtR269EIp3+yU6wrxC8odGthtq53RFeBtbpyLC
	 dApp8pBg1fgj8QO2JvwWdjQvTg8YDsE1VJMvlJS5IK9dCCeUXFmFuMQAuBeiQI9AEO
	 0Hh2plz/x147uKVBsI1daD7oZ7MnqOI71SvI8NVvtaZbhdV8wiBUmteE2BQGG4vllS
	 zzH2eSOT3fVZLiHcXKL05C5edit3b2TRxHPqvveFfQ9gEiFWNBYGOMMWiTYamDzWH+
	 GYHhcXatBdW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE34DC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 16:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167717010574.12374.16767473814789425289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763745e1cf24c4c78c4fa695a836028c343aa5eb38a077293627d91768871edd
Date: Thu, 23 Feb 2023 16:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677170105
