Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1A9322A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DF5FC433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 22:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680734226;
	bh=OQrma7/Pab73+SIvYA2iixnqceH5D76FbLc5uHC484s=;
	h=To:Subject:From:Date:From;
	b=hvjkaY3+4oKu+pwXZvCUWH9uG0gBmvBsbaqf1abR4IOwm2djwiAKRRwdbXSKU1UfF
	 X0FA657jbfTBa36iPHQtr76WthRqV2XoA0GFFWWepJgV7jt6+mS41tFy8DxFFmCIk6
	 vYVyLppaBl3yOpEECx4XFc67fIGLas/ftG9Bbo6r59awRTo6lH8zgRJhpBFWLu9IY6
	 Qyj4y3/ylgR8ZEilUHNY1imqLb+cjOvxc/duOcxeF6XxkwCwpUbk3D91XAYA6fHDY+
	 jho4ienRgPnvHAD+26hVwI3god5RJMYP8/WQhCHRYZ8L4kQZLSWFyIUY/rY4jkYoE9
	 cKRGhSbyDvFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E99F4C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168073422593.8355.2841723217621292082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763c37659ec7eaa9673268fdb5972fce154ff71c28ae166b66a7f44c066098b0
Date: Wed, 05 Apr 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680734225
