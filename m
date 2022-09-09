Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6ACC622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED7AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662704453;
	bh=oW3qDanbayoe2Fdhgut1VprYgIb+ZFTg+pnVexj0K68=;
	h=To:Subject:From:Date:From;
	b=VNkhRvzKs96FskLlXPGlicSxkHFg76F+f94BUfFTYwODn2FlOpUukjlkNZSGFzi+p
	 TgG8R/YUeV1E8rWc3tQ0rYNRh8U/MSHnzUNVagbK1KEZOs20n6nF1l6e05SUBjk6k7
	 wwnPZYV76MrAG8eNCaU4fOLNiv0jYJSNbUTtG80e027iAi3yQeEGUf5y7TcK7dcIAH
	 TsKVUFtLc+r5roEss4m9p11mGraVj3z1l3AdM7KB7oOpiQmXT//gW62H//hYN83u//
	 rDGfD/1CAlwFGlXn6YM3O6L0BURMj3z8oZzd4ikrZHJGpjoGVCgiWCA3ISJIbBoBtf
	 aQ38XJGF0vsgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53002ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270445333.6064.5816060404550148456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a5c7c1311c115bea3184313d66780342eb21c22d4c87de878640c086171d20
Date: Fri, 09 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662704453
