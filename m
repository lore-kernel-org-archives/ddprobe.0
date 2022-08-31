Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12197E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D66BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661939453;
	bh=MPX4I7ku9HUYFhXVb2/6bPprSCI2DSI0H+7eUy5Ikds=;
	h=To:Subject:From:Date:From;
	b=Q5iU0OuFIT76Yi+LgFk2cMNP+0i1r7Y0mpBWrzMXTkUGIJ+Ap62dVpfDPSPku/KMU
	 wBhX6Lg/FlKDqoYjJ1kGhZIp4EZOia17e/p/MzWc9bQigJxy2+2CdLforEru/QzEQ4
	 4xvUpgk9CgWeHdW92L2AJ4AcKHMZDN2ZRhH00XFApo99wBG8uAEia1OfEIibojQkHH
	 Se78mbcCuh58bYdEuFOT8TEPJukAp/21EHOQ3ilHJbe2IaAm0tG1bmNXxuJuf1uVA2
	 3kJh/YBuShb4lVE7dpfF8aqytAkIk+3O0c/2OmFzcuO/vZbVYqcVOPW81BLWusTZiW
	 Oj2MkUfMwBTuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5213FECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193945332.24641.9236909716398633895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b2558472908961b5908cec8945279cc37705b632f145dec187e0aae9f91d4b
Date: Wed, 31 Aug 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661939453
