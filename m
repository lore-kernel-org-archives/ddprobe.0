Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8327B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772F8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664335853;
	bh=YlWFUdM5VxXQ0vthuhgvM0JDs7u/RpkXVMgTzI5HIjI=;
	h=To:Subject:From:Date:From;
	b=N/fmSmFuKY6c4z8B3Ng9UrBGUOQAZWO3MpYEq1lKpAn2Gjs6rwOqRpBQi0j0nNYTs
	 dyLYtrrJ0NWbHnPgo04W162gsJT5OPsbJ55ZWu/Yy+ccHmKjelaLLqt1dZw3EeNUBM
	 YAEII2xVr4A84tPm4Ff65aJsLOsxwPqr9aqjdQlG/E8vvwhONAlYc0FDx+m7SvK/Ws
	 uBJhiWh2Opl0fLbCnFFdcg/ZAUyBvWXVoLQE9YlRl7XWYMRIgJMeEBb+naZw/nTCcq
	 qR0ReJkfaUUhgAx3X7fY0nLjYmE9xHM6nlBbXjP5y/Aavn9IavHPQwqlF+0vspPtsm
	 wZVxn+3jyb75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2F8C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433585336.6443.11208581000207887896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98988a6df9b1ed53a601828ed4159869c3225e87239190704d39bb4ae732e53d
Date: Wed, 28 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664335853
