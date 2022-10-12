Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE78F17ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AD9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665586853;
	bh=WVGsWUnSJSW5EP/si8wgfYGX1+1wG+L3UQTFjRtCONI=;
	h=To:Subject:From:Date:From;
	b=RqeBDewztmXbkX+9auuv+BGnWo7ZTwgwGF1rIPa7eDPbj+l6XMmLgO0piwTgRPjid
	 Hw6vnSYS6WG3xvKDKpnI5gtJBokU9MY8Ft+BlZj0nWUrkXrKZPy2eJe02Qx2Kxc13D
	 Es7qT7Bf84toJlbf32ftlVFDh/zTW31ErOXB1vh6GP02v+IUMr7SlDM/53RzeGLsGQ
	 mFta7t2ku+GzZtyCFxBTPgNd7xKQqMjYpzJxIr/F8yJOP3ioElpWMbULvVYd53ZAo5
	 339eQrFJsDXMbHL0GfDpw0m1GXZxcboY3BOiMLGgWVP6TwJoJH9RtiwASykJc0KLYZ
	 63DimyclHSFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C7DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558685335.28152.17117001624280507842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17161096d82952c8d92732997846703fd8fc38fc297fc813aa9e94b640118063
Date: Wed, 12 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665586853
