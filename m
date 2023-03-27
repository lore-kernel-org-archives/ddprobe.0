Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8C7468
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C29C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679944385;
	bh=vN1JmV9weHDaS4f/thX5TQojQY3UWvygDT6u5adYGw8=;
	h=To:Subject:From:Date:From;
	b=CaOFiRNPVta3u2UDruj8azbLpSrF5g43GoUiIGS7BcqrSCIhUbPOWVx7FIR00lbUx
	 /ZWN6+CuYSdOs2Z3zQBEJ/6s+YbcQVQXDEl+uYEFZmshoSyiNsi9SvzAcHFMNZ2qEP
	 eCMlYhGE9F8x8CvBg7MDd/VJo+44l5BbgZU9ItoLZWx7gxM+1bx05y6myQLW51uEUk
	 ahBln4ubeZxMMfaQl8hIECRyY9CzYvnlxzz+t7vz6dAubZQEGG8d7X0+ax+WZnYRuq
	 A/ucV0dVn8u72AhKnY+7idLF/kYPIkorF6qlFmz4cyc65Vakvw63+rnxL3FhlJEpEH
	 0SE4vGCmQj5ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1BDC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994438581.5771.15090152719898805448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bd60891ab6b4eb92d3085d715b44f8f2d61d91c2b13a8c5177f7d578c90770
Date: Mon, 27 Mar 2023 19:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679944385
