Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7AC2F53
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E04EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661799652;
	bh=OZrFxmbnInJtM97HiHVnObzCIWiTpwDWruWr4WnLiY0=;
	h=To:Subject:From:Date:From;
	b=b3VUeZB7jKoVE+AFzM46MXwufH8tBVd8jWfacfRDOE+tvTPRdrrVmqjB9g865Fo+x
	 lU6bhPm49Fjd3OyvIvKV4bMqPpuTQV/ohPBo1qpH9SVYriSYmtrrpJDtsg59W5bAWZ
	 bcd+xARQDKlICO6lafoaBdnTxRXdEFHjZ/DPKBCLE3ctQIcCjIwRg+BCQ1ohajE9oG
	 ev7HJozBj6uH+e9070LqaUwDSqC5JU6s1xiZd4cj1lD8qLRIkZNZ4WmU+P2Y3qdfA7
	 r22lMsV15UrmjxXG34eYgE+lwBQc12qIWFZmrBVvLdNGAUtuKVwezGN+KLXw7LMUUZ
	 cWgawsDRvdFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6788BECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 19:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179965240.30477.17556760172615592784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d153a9781699dccff46220ac8dc90e75203a36e68ef7e74fcc850daf592f2d17
Date: Mon, 29 Aug 2022 19:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661799652
