Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECE180A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C009C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673674887;
	bh=4VWma/q5RA5Gu+Lvv/7E9YiGhGCxmDV70LuupV/cbFI=;
	h=To:Subject:From:Date:From;
	b=b18XMDe0SWwao0m129aoAHQFL+642zAXpB+Nd5FT7boibq5VxD7T1ZCo/32w55QY1
	 bv4C8hN0XPSZ9YaRJEgRBIVRvb6OVs0J7LFBS0pWBNR1j3vMp2xTPYDycZwUyivDAm
	 D0pdBOp/OT811fbcBy94aRd/SsjyoPr0SpVY9T2c+Pk7s+dCv7XlAD9HUuqnwycC3i
	 kmX5jwuEtrOm9D4rjkjMIk44q4SIzqpkgWJ8x/jEL5gFemXHmZ2IZEKco0+/O9itBx
	 SU6bOLb+RRs6ocjMUR7EGLu/sDgtqGBBJkKcCWPxb0G0ACN/t7BwpwvFVxvw6lz+5x
	 JeS2niFXJSCSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62182C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367488739.9475.3604443173367339171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78acb6a7e6fe3d666cc33dcdfff2d874638c85f94273b0597245fb8ccd885520
Date: Sat, 14 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673674887
