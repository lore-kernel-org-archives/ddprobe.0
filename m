Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720E4134A2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD634C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687379588;
	bh=qlfm8TTzXlJGGp2so46vhrZzdOb1rGbt3D8sa+2igsk=;
	h=To:Subject:From:Date:From;
	b=Mz2SSwxipbBW5dW1rctT1cGRyPUfdstFyitoSmdhSrLcIIyNcIZ/tH676k5MjMojb
	 SZ4ameHVbBATMAvyLslHzaL9uUfNzqedwURv7ZJp1C42Tk//mMQRTTizNex2VZVbjw
	 7Yu49myaKnV/uL+s/Oo4AdfP7UJSIy75qmix2tMqROzYmPBRjo8J7iwEYJueCk+ScG
	 Jdzq3k2l+8EgeWamgUkRabs4ByBEfx/jHaZ8afyYkFIMBXfdUHXVx160o4CvGGIoYC
	 h6obp17FKmg8tcK1PL1d/jSEWimdVL4kygAXC4VKbo/U9IZKGIxuCOpStD0F2OW6qj
	 wYvBY74crveRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BCDEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737958872.22820.5554069010871731627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241155dddaa1ced93a98fa1f1e76ed76c045acca933b260ce6c3625b3cfb2a33
Date: Wed, 21 Jun 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687379588
