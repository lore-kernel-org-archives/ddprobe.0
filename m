Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF0A364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D08EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666491653;
	bh=y/XofdFfATowp2+An7Dcb40oVXeCHUtqJ1JaKjBbzFY=;
	h=To:Subject:From:Date:From;
	b=SK8vORV+puLlbiYJY6SwsPZ7cgfRZW0AIpX1rssyQOgphobxtbX4q6aJHUGgh92eS
	 6pn7pgLR/A2/4kGoJSu8N0XCBO4NeeSXpM+qemRnnGdSd9ti0+sRDluWMoWVLyq+u4
	 y9SKX4sZzGbe3LOPV7cqgMbGfkRmh8KIyeAFxSYhDWvr/8QARoxys+NiSAuVez1n1i
	 HA444ViRTunziodrALU7F2+pZ887alxU5CDpKHSNj0jM2Ei3vG+MzTDKEx3SVGO2nk
	 vQeGlhf3237ZShPXJHSIJbs5rBrNA3Cw6Jl7DqMuGavUZ1Yv39krZ2AWRK1H0SnW3Y
	 O+kz24H1ib4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5104AC04A95
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649165332.24883.13713976162632130487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276991e135fd29f32fad8d567161b1848d565f85aa6fd4160f515181b47ff67d
Date: Sun, 23 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666491653
