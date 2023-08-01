Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EF47E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB9EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690854128;
	bh=hOhhzHeRTk3BdNOsuKDD09TDArGhc77MAi6dAOGimdY=;
	h=To:Subject:From:Date:From;
	b=AuaVSeZNcezQk8LnEe2C0eIey//4qDTTSKeGgEfx7FzvWxk5YcX3yLfpMLXqp3F4O
	 dl1OuwcflifBUc7FLYES/8ih25lXt1WkK5fzf18d9nTQmyKWIrHSQ7lAmn4mFCBk7M
	 cVWj3dBgYo8Lkmz/EtZcjBpDxesm+A4MX30kVu4NoFpYJmbwwlj2hIKTqXcP8189KI
	 91u8VAl2OrBTprQMJwr/2LHT4RqR7b816b+IJeZA01x52ka0nPKhLiTkU8DjL9s5vS
	 rUhdmxeFM0s0SUKYI8gDoxmVWJmE8anD+T+ZlfjMUk6x6hYpDY8q+Ey5IDNFpyJo16
	 XYPIAcQ2Q3gAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A0CC001DE
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169085412871.7238.13630255082709218675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a644d0dbde6a53c6b39d423dc5444ad3c08ce14a8c0bc28640f70e81c1fedbce
Date: Tue, 01 Aug 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690854128
