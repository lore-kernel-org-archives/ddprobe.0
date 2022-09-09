Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0DA622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3B4C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662694853;
	bh=NmPvQWG0RxrMQpytfbJesOJRuNpwJGaAedFB89gYacs=;
	h=To:Subject:From:Date:From;
	b=OfgG+LjcTq6N2JdDmdy4HHZ71sFSzfT/qLVdximuy1ufZxHFhOOQi/g2fYstAznaB
	 JkuhZrmwvmSMMJEoe8oIuhqf8IfQSkMCbyk9O5oRfjfqytB8JpobVZtoWQ2igETzvB
	 VCGEncROwmmFhaHoWRpA3FhoGzQQNsbw0tk28MkDDjYp1UVfi9qlLNZ92Cl1UJukj5
	 phY1xZaxPIoIuA1R3gr1WK4pxRcBSdAc5PGZBizCMTtd4OdVw85iqDS5/zxcHZADbS
	 eeYftNSCUaG6M0SMxYwQTGgN7Z+JVe/zy9RigDc/CJG1sV5gsbgQSiwpYJWdusSxyV
	 rs+bJC4SeYMCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B75ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269485333.24577.2666815958958937354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79ebaf1907e3b14a47265727736e8ccb80f146ec31cb8323c991e1a61683fcf
Date: Fri, 09 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662694853
