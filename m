Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC957EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA4FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669810854;
	bh=9vaK1TOGgiDRmnjbRSH9Okp9PT3J8WTOSklbv1u3dOo=;
	h=To:Subject:From:Date:From;
	b=AOLT7agkCrKJFPRjxpd/EEDP2Q4ehdmg69aZ5M6P7BRYKovDxZvujd+mJJXaYU8En
	 sbWM0yILyBGUOfwpyv3pJuYFIz65R4Qczy4/EmUylDjLUVHI+rdLT+uQF5eLnvVsgt
	 GR6ezdqVNYBdM1q7bJF/RBBSFXmppmpoLNBIdhF/oxVmgsC31InvlkqOHorW7cPfNg
	 DBeaaf/G3Hz+j7yr+2wHeP5b8HT+7A/e3hniov0y+kYpOjcCsVPEnXawnUKyPMqvwl
	 4h/hAD3s2GFzryO0o/5/01zvk0DqzGsB7YguM4ZT+MIbhWNfoTJIatSDBH/N5xbLE3
	 i6iaei9ctjgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610D4C352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981085438.12639.15550036235372868795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4a8890b44a4b1189b5fa34eac586ae1cf66636574756175559b7ed55273ee0
Date: Wed, 30 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669810854
