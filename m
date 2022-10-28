Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10832563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A76C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666966854;
	bh=0rpW8T+B98D74Xa8Hfes2YmgKA4tV4kFMsYMB32aXvU=;
	h=To:Subject:From:Date:From;
	b=jSHoODDaLIyVlWvTyKEHiW9AQSGCpgIPI4TkV6z1H/3Z6ZwFXGR6vs2Q2Wblix2tr
	 49YzopMnp2NE8xFTEGtB1977Rlkju5SIAIMpo5vVA7aSK3RX6nL/lfDy43Qu+2SnZe
	 bCLfGHjCoizDs0pdwzzfEri5dwSl5STq10bxjYs6gIginansrvoh4w/HGNZuraPFrH
	 XJMZ28hfWdAZiN1dozLRvUABmRxaElE5Xf2bqdQpCQZu/jggRm+fRLMz7gNI1tHSC9
	 76SithL995CHgNqeQBQFThOEAZQAFwEejgIOsW57c+Yb2JTQHj2J8kQcTIuNGeLbKZ
	 JOrEoDTA7UatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51400C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696685432.23336.14781648733593287742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6128c5d78e02705b55556292a35ae3bad945723ab5c61846000d5408ae935072
Date: Fri, 28 Oct 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666966854
