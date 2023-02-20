Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEBCEA6
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 05:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB92C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 05:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676872085;
	bh=1Ibt28E04GthJHXOLNFCkCP6DIdE8GbZYyuZl+z3XRg=;
	h=To:Subject:From:Date:From;
	b=pkD3R6KF3ezUpRTggHeqwC2+CWt4WEAVxc9xNPWsicF9aCiuUr7Zz8nNx7Jq0O8To
	 gEAXjQDmlqYofiqUE2wlG5Yu2ehZA7wRQzjfmG3WSf4oyf3LeVp0EuVRqtXuuBWQJz
	 cOk4U2Jt3DpY8We8L9PLznq3aHjUK3TYFlf01pSxWUC8KB1ZzYNY+cDy0QwvTu9v04
	 Z40eukTL/GEze1UacxudtvLHyjYQIBg6CJ7kAD11t6x398VA46zvHIpJE50/dHYhOi
	 bmhddNJITd9/6jS+rYWeWaC0dAPe4oxHOMiZkRwuFDu17Xp30us4jXrk9sWU3q0o6R
	 rjbemibeJrX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ADFC636D6
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 05:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167687208572.21255.12367767633992681520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9385d16b2a897d33a31a7428f6a35c939dde6af9053bfcf7c4d014a68be51d2d
Date: Mon, 20 Feb 2023 05:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676872085
