Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A16E28EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7161C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688330108;
	bh=Pio7Iljjm5v7ekSO0F0O7xaS8sta8vut4ZSMEeTuDXc=;
	h=To:Subject:From:Date:From;
	b=cvwswjm6iaOdedNQMrizdnFSydfAb0ReVlNF/flrZHVB1cHEPz6MV+s+8kEcQ3h/O
	 XSrEfKVzk0jjiuIk/OD/6jGu+SSjCV3aXbtbvlHo2jdbuabhhpfM1szahCwXB3c1VB
	 KAVIZa4FaQfbjz1KbV4+dIjNQpyjJ5Au39Ch2jhs4XatDauzD27YPEhu8jiQg48qkw
	 HYkHSgDiNB0Rxq8cdKQkSVS43HZtd8zfT9ESrOcvbO8xuMkVl7YuO4VCDAV7hBumgt
	 y3MgE8Eoqr6JkvkhLuL3578xFLeAC7N7V75H3Xt3bWeLUqKg3QAy8qXGpjcbCLk1L9
	 KRV9tS0T9TybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27C9EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168833010871.25189.17617751698195296617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f3d0614b19d8408b97384d167c01c35ed858f3d9cea7d0197ba28b2fd79250
Date: Sun, 02 Jul 2023 20:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688330108
