Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA0B17EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81839C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663291853;
	bh=T5LyVUcxGEICVkeXm7Z96U9sC4qY1dOnOxIt/2pTDKY=;
	h=To:Subject:From:Date:From;
	b=lUeIGolMJaSaN6TYGXprBiwDHqRCf41BOk0Itpq/EJ+WagB7LN1+ISKyFQEOVKqkL
	 bedkeUh48TyLr8TQgSDFfYWbPUYqd4NXdN6hZPZKXvDESkhCi0j4tEBGGMTJLSG77W
	 nu/UZiKs17QiF7S5bZ21Bf2ntq6iodb7zV0ryf5vgtuuuQgRizDX6CykPw2vNXQ99i
	 myVYWPUK6kLRzkSTfUmKqspDXVMMelKO8IFzOmUKy/MG16yeg11s5ryAAXyvRDepkE
	 TKOH2kt8KHpHAcVDPeSFPvjwewGZMjyp6q+znPU256XZOzHd2rtNJ0wDFsJJdPR2Sz
	 +lBATmrkwBy+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563D3C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329185334.7778.7000765389582525796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0db585a10a6b2b474cd840088e5ff95ad124a9fe5ab5e8e07f8276771ac41fa
Date: Fri, 16 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663291853
