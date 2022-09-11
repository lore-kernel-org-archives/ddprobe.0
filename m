Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4FC7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7350EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662871853;
	bh=f8YSG8s1hndZpQ1tSu1u7XfqwaJ46dHZzpZzEPsd+yk=;
	h=To:Subject:From:Date:From;
	b=uuWSwwkCVVaTyypj3GS4Hy7u3H6Y7aTiXidC5msMr15jZ4u4J+aSM+yzupz+ilz5l
	 q4pL9T4yhtXSaVsZBMulGJFUt5rqHHfD+Gfcadu4KerwqPYUP3cQHLcW1JvBvSs86v
	 Xa8wAcJoGtzO9mZxPuLH5MF0TrGgQlWJ4f8pbSokN9yRvZBBvTMnIoCK/HNTcqDRbX
	 +W5rhLAm38+PBTPAqclMSdztFBJvOj1+b4o0m+c0ZmyW5o8WoTQTs0SwfTg4IoHKch
	 UzWo1qiAi2SgFN2PGYDiDL/igrEuUkhIld2rIrr/hUN7HpaNWgMmR1J8zmftmVCZhc
	 KBm3wJfs8nfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558EAECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287185334.16058.6284125487675803594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e740de254b6dda52d67ed36be0b1b0340823b9967033bc3a9f06c2f49ba18840
Date: Sun, 11 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662871853
