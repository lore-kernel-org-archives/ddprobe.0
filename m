Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4123B4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E621AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675589165;
	bh=wwwQgJ/2dBn2nE65Oy6kp3646WW9EBADLrjZEatf0Pk=;
	h=To:Subject:From:Date:From;
	b=eVWWTxWSJWxI5TqzhZ6LWIJbjNoJzWh2mad/gn65qShBjoVG9KyG8vChu8YXscpgq
	 oTf0mgRKC2vn4y/BBanOXenc4I9ucphRESZ3ZfoSwNJmGlHFtJEyEs3hHU8Vu5MjVM
	 n9CmV6PvnqP43847PaECLkUtoGnb3Khtzx0T+gf6AQVatzgDUiIrJz3hmhTiBQpwwl
	 7EpsvouV76MLl+jB++QXoYTJTMLEbo1DxKR90rCci0KQKn5YRuQYCTjy+dlqol551q
	 oCh+KiSVKFtAA2EWwjcF2pLKk0KeovnBvcZ9Y1A9kh812X4CmqyPRQ0PeR0jNcx6gb
	 wcgdHvN5XE8LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFF7C636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 09:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167558916579.20427.6736483763354244380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef1f7b8a0cf458de346a47aedb7922589a35a666aafa90d7c26423dc865e5f5
Date: Sun, 05 Feb 2023 09:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675589165
