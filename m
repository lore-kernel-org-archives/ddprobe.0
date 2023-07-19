Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153B134A5
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 11:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E723AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 11:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689766868;
	bh=S/zJSYMfO8AaptALHChINWA6d8jr+Tno9g2y4Xws3XI=;
	h=To:Subject:From:Date:From;
	b=OaqTrlGtMe2pfAlYItPQK5+dFB3iMTWKSvkvyc84zUiTSJztifidZ7+ffG9KV6dLX
	 2+NVyu7ryEYR83Kph0QM0MWYjh70BSmFFzn2ADU/Pj5Vk2Mvj0pdI+Fe520W3b4UUl
	 eSyd9JrNDEqp3E7v7f0vSHm/hSH4QRNrkU1qUckCUzLY29DX6g9NhqLlJAcsU67fzm
	 HjVyQNMBhDz6aoPm5vQNLGFCBYoouQ9uJTs8yYUeFJEj9YgYPWCt0mps2TdDvrnU8h
	 2ULpSW/EMnbPN54GYQK58PR9uaQs6/1PVov7BnEhfGcxZUh93uR4vk0R44+AJGqAPU
	 RPsx2sANFHovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2A0EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 11:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168976686876.13334.615985071147308094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed10e0711924705639c9d57106f991070a289c5ec147a2c444de4a47243d25a
Date: Wed, 19 Jul 2023 11:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689766868
