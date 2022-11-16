Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4BC15B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709E5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668619254;
	bh=Rvs9f7/fwT2K1TCJB4FSJ2WnatXFbHAuUT0uZb9IbTQ=;
	h=To:Subject:From:Date:From;
	b=lUeBLPsBV+1LUEXJ/kw92CSz0F7VaNBsFJb/eSjwg50j0IZXGjy9CWxhF+betJ/U9
	 ERXus39+DAuJv3d33RGZQTylbJUUpSiwZuJDoSNa48T/jGP0ld9pNCIF43tLrtJPu2
	 v2iF5MPe8yzE15ju+r8R1ahhflbfIwNO/BcbtZNcYKf+yCGTCcnsiS+wRsm+sAyqaE
	 KXnKweUlEolusVQwGbO8Hp8JPASMt9nLKrAorKypbb6DXa7sRNoEXjJyCX/ARG2+Vh
	 ZUM7c9IZunTzZgeYwUNZox38HpEVn0B9xyNrzu6KIqDpRXoXFP80hu5dq12sDML2gZ
	 zu7r0l9J4P2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537BFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861925433.23607.15515365184498206742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee51369a357f77dc0e9a9c8b9c5d3fe0af0256f6c10b839bd4a7e790beca240
Date: Wed, 16 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668619254
