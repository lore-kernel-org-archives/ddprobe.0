Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2FFEB8
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F36AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672136487;
	bh=xdW6iaJk/EMJqbJHiVKoxDyGNuBAeEMmPJKFRNZPe8w=;
	h=To:Subject:From:Date:From;
	b=BiVMPMtrEo4l2/p9fUtl+4o2Bawapy1C3xbGM4G+yLxzHWqmA1C15k9Bnwm8NdNpk
	 im+8cv3fQn9O/bcWelFnLYCbdMiHHCA0Yynxw4gxh2q+6faK+FBZUnFZzXZfvu9Fmq
	 TPtFS7BW22xApqI5hvk4IDYMQQo179YIIncBezJm35jxNjxpqK/FH6uBLPu0iUoQiN
	 uFzU2VQuFrRmJP4zJs4w+Mnq866bjyKF6jgBQvAOTvym4O5duIoeLeF9SECsqzUvJx
	 ZGtuK5jGTitAI1eM61HP3i2kJLdRh8oEpBPeFz5JOpWPpS/Z5SU6d2141QkIXi4jWR
	 4e+WFBeW8RJvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B63C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213648740.12681.13843370540023930425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ca0ee632d12de61f91666bbc2dd15146bb2987c39f56307fcee6c4f8d1b816
Date: Tue, 27 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672136487
