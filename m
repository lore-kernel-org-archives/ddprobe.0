Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7F0848D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6F1C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666804853;
	bh=sMPb+lTe7pV+YfxE90FfbNLQujfs2JR5X5ZQt3vOdgc=;
	h=To:Subject:From:Date:From;
	b=tNIpVc76xhf5Sg3TRhZoVXbHkb6h/M04/d0QiDNrTCqywIZ21zc23mVsceb1dvQQy
	 ff1ArkNPk5xWLzbvrZDfodQzXvxfFx2mNMx2jHX0jyI8Zu71V+p3zJ31H/yoyM3HlL
	 e15CnTwoGw8QNzppVBGVnN194Gj86l4iRLEyLNtyHlLzIhqAH3+loI5rqvtgTq59yo
	 8pbstLh8ZzTW6VlBNFoYI4fqSn2jZzBN8cAoPE1KbRei+7dO10gkn+nV65ugCHPZrw
	 vaNjVYlrOhngKI00IvyDES90N1paHxQr9rfgXg0Z7b7f/jXedYn6S/8wRafPqC5/Cv
	 UKXR4oc6QLcQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5312FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680485333.22908.2876970549005260618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce61d205471ea040e910dc1a4b9ba3359db189cd5939c09151333f81b766d949
Date: Wed, 26 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666804853
