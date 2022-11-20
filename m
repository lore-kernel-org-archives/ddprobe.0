Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9AAA57
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7201CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668956454;
	bh=3AA6ND9+McvHyINdmpZ4L7MfpZ0PoqIkd7LDBtX8BhI=;
	h=To:Subject:From:Date:From;
	b=KY54/Qg4cuB+6O/g/jxePtMdd0R8UOz6ooCWXVLFUN6EkO2MSzmjhA8a2DAqRALks
	 z6+d6/k51ecpFO46p8aNetcQIxQ2Zoj9aSvVG/2Kwc5pyMuDQYYvCU4JrehwiyVp9L
	 ABelpymhr+QO6Y1MPV5dsXIgYcvUyB2l/Ik6wDuV+EREeWNdkRsVhY/lbuhLSku/ji
	 xN8eTlFpurle4w+Pa7tGGAXFR/2jUh05kHXo3cTr1tzy702qtxS0bvtjA+MNIZ4QGI
	 91IRBMLUIuDYvYcuOpxeF1cwyjbM9urg4REpCRqgcCQlIRZ8168pi4ub5uhd1Ik3Mt
	 UThn8Rt8gTVDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B39C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895645433.13288.1333923188091612439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22e20455214e879e6befdc2813ab03a883ce49744ddbfc83e25b8cfb071628f
Date: Sun, 20 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668956454
