Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62477F5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B43DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020054;
	bh=2qjxWm2X4Ax9+2vp+/nx5Dpq9FogzxXq0//piMaNwP8=;
	h=To:Subject:From:Date:From;
	b=j518MEF89L0Z+HLk+zMQbJPd8Vwrje6RlIdHQpnraxGxuBfvfyx2TIiJt4Ef4PAif
	 hsvYOEfXCrbeo8ZrUHhfXJV8TWxB8hPQcL4xv1oERwMlK/UXSoTFmCVsvD1ETLUUhB
	 yVfAx3xbFU8BffJ4i8otQKA2qevzzW7YO0M5WXWqgbRoZo1DffNO9uR8X0r8oAnEmk
	 8HP9zSDc2zlCK2Glu3hOd2woVcernR45gHH5DZkCBCN9ThDn0x7W+VRHsrGsHrwLOi
	 67nHjbO4TalBvtBe/WPEH5CpUkNTqZQgxclUni6H88pNb+8PcjD4tzRcnPizS72J8V
	 5tVKc0ondx9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D3DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902005434.17234.4169925531259245943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2f130a4b838215919d2581087694a0931b05272f7aca5c7562aa42ab2f8417
Date: Mon, 21 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669020054
