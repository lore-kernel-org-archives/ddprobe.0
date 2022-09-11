Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B4A7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69963C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662937253;
	bh=ORdfV8pIjtNU8whc4HSaptNGrmgv9tsxcbFeHtX5Q0s=;
	h=To:Subject:From:Date:From;
	b=f/ihtzVtCojviFea7+YR2cLsd83gX1GcfANO48ohPbtKg2r/3gQPkpCp5EHLvxHIU
	 2O4aahgc1O+IC6jlrwqf5+KHOT9ReWBplaRx3ngo92nxDIkTHm/0Vil2kJf5lgEqiJ
	 WO4dnvsDNHGzmE4jGexahfZsNPqiFtrj0TxKYaUj6oiUcCXiGkbeOldz2OYsEYOLmp
	 fxzkC275dYSTY7Thm8MzWZsclqGK1s0k4s6Q5Re2lMZTBH05QKzTwTo0c1LSDq95cC
	 uJJ+3jiIXTy2jd1npqecLg0wXDBgAxZMuGsdFVJ3BgKP74fnyzPteKnIjcnyVOV6MA
	 jhMZLgJNYAuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CA3C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293725331.15890.16119356778454786599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39254ebf06fda203f7330232528c2108642b510d596152db001815aff2f6f72b
Date: Sun, 11 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662937253
