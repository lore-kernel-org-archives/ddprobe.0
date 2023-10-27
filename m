Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2713AC22
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPttTN4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D0F2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698434296;
	bh=RQYoAxXB2fGukUSmgKqGEzkDwMCrCQDPghRfwtgpw30=;
	h=To:Subject:From:Date:From;
	b=lPttTN4XjTX0O25ngP826/9HIufRQQUK7iKyrgCqCbll5tMLMpxR/OXJ82kmcIqsD
	 josJNjg/syZts/ysADI9J/pjH1LjCTLlljw6rSgYApsMB6kmyZltH2ebqy/KezPfdR
	 OykAfNYPkyZAVWo7hWFPqIC+i/tWcKf2PQZadVG9viVLm4MU83Hp6NJbXEPiU7OkJA
	 cmVIhqYu38ppf3ZEairgjA+1oYHJY0AInJDGXLTOu61KhiP8iJKAzK1TSoaNxqx68Z
	 twpC/jJjR88F/ihPt2dY2ZF4+uJrGP1aYCOe6BKHH6LXftsgEFu+I7qD7iJk8nANkn
	 TbMcFirXLN9EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D70AC25B48
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843429642.24471.6700038699539852861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190342285802bee7201b0087731ae7a7f078fb3607180f71b2461e641a8d8f95
Date: Fri, 27 Oct 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698434296
