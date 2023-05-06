Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5111B156EB
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 12:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00FB2C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 12:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683375486;
	bh=DgpsbPRFHDO9GK1mxptWzCt3dK7YXyGbhp3Iy9BGKUU=;
	h=To:Subject:From:Date:From;
	b=YoYH0Fr2Wtpo/NtlWusgkUW4eZW4R9/jPEL+uhy/Y7u3K3P4u7qF5ydtSfX9tkLEz
	 RdUtH5gGEZxKO7stFThS42365QjAKBKx8c1bKO1b9hTsm4GrAX/GgYjLPJB0J0GYtD
	 Juoaz0bh3mBQHCod6lFwOWcxaRz8EA2BO9nfolhMg45QlGPNXp+ef30Kx2Thg/TetC
	 wHuTSPZoEhaJaHDPZYEQlIVkkG4n9Ls4lt7t853syh0AnEgDLNogwJ9oEeQKj0BmZW
	 meUcP4iL97YmQAOvL795EWsqiIStQtuQolXzBhYtIza/ZXGBkxISXeKpJBc2nSdYAw
	 RiwE//edXpfMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D670AC77B75
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 12:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168337548580.27694.3035765386993205167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9fb016ecfa3fcd3b3463191c172e6bb8251eab0ae32e101f01c48b1f7b1c21
Date: Sat, 06 May 2023 12:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683375485
