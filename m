Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC1D20FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C836C433F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673436087;
	bh=0fLsRCKFchrIKgKRRxfxF5xbhPOE+frBvdSzmCTqC0k=;
	h=To:Subject:From:Date:From;
	b=TKiXRqXp0la50LyQ6YMKWtKYY2R2ANTvJOG6eryBnZ/TAl2tkw3GGuTG1v908gdpz
	 AxUvv7pib94W99CjEbkyNlLIt/jlsOpy6rAFRdJqcY6ilgm/IM/SkZ22t2COKDoawK
	 bFlne31E0xYNvohjTny9XusdB0lpl1tnQU838yZzhkLUBqvlxggV8nOky04pBwhC33
	 x7qHZhkiNXWOPytVMrhcbZGWocMnw+9XVrNQ4LrUUmPvOWQzTRrANUIUuRWtbVHkAv
	 fw0fRPW0efdZYDVv1Ed0PGtuQorZZjyBQEdZD2LCpxkScq1rkAcuK8hWfrRwBELFcq
	 A/KaZNTGXvurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D195C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343608743.32435.14514308431828647858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6585fb2624e3e69b45e7c29fd94868882d6e5ddc4af42ac2353f0fbf7c5ec0
Date: Wed, 11 Jan 2023 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673436087
