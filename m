Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15514258D
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afKzXSP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF14C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700325496;
	bh=gMl1GLSVResXIFDcsg/mtis09IbPE8EY3F7PAJAfP3Y=;
	h=To:Subject:From:Date:From;
	b=afKzXSP+qkmewcWorXWEbMDfOanKRZXChwKqi3FJVCeoyxxW6gygSHchdyNInTcoH
	 zUi6upYdQgrLdbGGwTJxzcKnbnRAgq/MZ02bK9iEstymhG35WViqv4MsBEsoFuhWsz
	 TAItHWUkHrzP2+rLFdNlVcFG2/1n2m2cLbSV6qX+qSMFN5gKowIZMnVD1wauKNMTsc
	 OTwGrYljlxGgrpM8T9ZTePRU2x5XJwPlfQWR/JcJ0kZv7emkqKjpRdu/wgKzy/+Bm/
	 Tagr2+gB3P6oKXJI0Bd3APi6p7NNLVEMJg+xE80kUh2QIUiGx2lb4HsaEAYWjXXxp3
	 Rj4RHEHP4YNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E71C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170032549637.6606.5596429906596337300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d632febd230100b7458d74ebb7a47b53c785fd873ae06eb19ac5c9c1f5929b
Date: Sat, 18 Nov 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700325496
