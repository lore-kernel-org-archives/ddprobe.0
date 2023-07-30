Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ABD1FDA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690744328;
	bh=ZxyNB4xudCmmdubgnuRgJyCuV3yvxYzAf2oRYsajnl8=;
	h=To:Subject:From:Date:From;
	b=OO5vqkgUG23Kd3Hy5+fYTcCyDN5xCnEMCA1qRtME/ttp3o7kClG17uVPie2hZFle5
	 7UOfgmZ9xKS1pcpz/akN7vCSYklNVIG9xzzKC3y+jq2V6F2XHT5AJbOp4dG0i6cwlj
	 wulzNccVhUH+zLNaE+smm86i7Jf+dbDZ1Dn5zmHxcQX50f6NY+qmkVuRjABkB7rl1p
	 +5v//qH3YEwToEiBQngnKB1RHouZbcycU4P5v5+q+CW+CKlb+nXEyiLWVqNEivPCJo
	 jr3VUocONazTm+hEz8QpC57o9f6kJ0rkuN3DgsGi0NI/aAxTJC7jIAXHXR2yaqChx/
	 TNO0z9PTULtSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D5C001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169074432867.31386.1130219929706791014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253bbceded6ac0cb3b1ceece029efd12e418c0a049c03f1ef79f9cf73357a99a
Date: Sun, 30 Jul 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690744328
