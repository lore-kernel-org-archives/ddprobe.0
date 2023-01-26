Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373CF1C06
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 05:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A56C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 05:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674711185;
	bh=p7xVtR7hWTTw+MkpIv3dTEmx7VuUrTwO6zw06V7Q0Cg=;
	h=To:Subject:From:Date:From;
	b=lGlaAyD8p9LX98w1VHexVwc1DGjKuQxRqFdLp7UsODc9rlPKNVd98Wk4g/7zxs3yS
	 olPSXkgnRT59bmDrJc/AePEn+uELveL5BycNPlsj9O6zA4RUdSWm8p5yHqgXw0kgZ/
	 K5NMC7LQo5EJeC4l8a1i2s2vwQaiJZ8a7O8j/cCJM8LbopjFnMvf6Y5E5TPj+xKM+N
	 K2qlYIn4LGhWF7Yx4ZhTXIxiPjtsk29LoQsmL/conGp+TZhr9HpHUOJxRbhxdoOt0U
	 dGGvolpmYLYKfnwSM98aWAzwdCUHhAPvKuKNggyFEcB8e8N2o60UXu2529Nix784qm
	 M8Jb99MGP3YIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA08C54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 05:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167471118576.7504.10939561526121332851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1907210a281a31c5b3fd5faed369a3ebffa7ffa92cd232f89e47c962fd9e757f
Date: Thu, 26 Jan 2023 05:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674711185
