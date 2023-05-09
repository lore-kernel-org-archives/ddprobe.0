Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBDF17FE0
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 17:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE229C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 17:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683654666;
	bh=bKQNNHrFhZkqCYaTXJoh5d9POK3B/1VHr5YQzeTz4+U=;
	h=To:Subject:From:Date:From;
	b=kSsAtw1Zz5lyIpg9/LB3R+mGMQcnWIFW4afrMXkKUNL0nZvmAyc2xkZIXlB/HS2bZ
	 deRtO44Fx2po5jOOu1oiAsLBWcszNNyVXFBcR45Th1IEsrl5jXY/2+mqS0zSFYvFwp
	 0JjPdh9miXz+KWiShz/1Dgm9UK4hpa/0fnLXy2SC8yoUc3shzD+yCTxuq3W/fuDMNS
	 Fk6xurXMr5TzoMPKGWN5AKZMiGuqS7ALKqjEHyPNtHkxINlz58Zc4uKUe2QCL8MQ7h
	 dyFoF5bGlCxM8SovbFje6ZKwHeIoVylRThmIHs7u9jd/wDWcOxKHi7MWTVcOlWScDZ
	 oJ+OoXKa0Iltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF404C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 17:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168365466584.21414.5599659623060328315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3193ad88c6534cc0875a60dcd97b0534d8a7df0907f147946b7ba169e76f3bf
Date: Tue, 09 May 2023 17:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683654665
