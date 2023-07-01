Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0C817F2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DCEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688181848;
	bh=oVQw/+LBh1I9waVPHbl6x/bo0S/cLbe920jzwZe/kgs=;
	h=To:Subject:From:Date:From;
	b=uXeWdCPlAGGu9901L65ScE+mb3rhyl6LT7EUICyHkEWkAcu0qCBxjOQPVqzP0i9VF
	 reE4WejU/uYcw3f4l6X4waX27Ucu/3LA0a6+FV2L+plH7Cg7uifoV0lbPzEUk7vpDz
	 yawRh1zEpLoR4W0sPsMAhraUe8WYXA9i9IqxgrT4zuJh1I9Q0c/FqO65pRiDy4SQDR
	 xqhLpEuSV7TKWn5ofc+bi3P0bSS7zP3JpFXgGS2BHfOQFeoMTGpZ/uFDTCav01qUor
	 nw8AgcVWzIcfhq9c58V8hVrKbJrnvQosY6yFWK4+vbXYX4Dw5T9COhYTgMMd4wjk0K
	 dGYJ7BYmwX73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B537CEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818184871.15972.7415109785659630052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902414d313b4bbdffcbf6d74d937d2333c6e25fac65e78c6069f35040b5244a8
Date: Sat, 01 Jul 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688181848
