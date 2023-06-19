Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAAFD2F2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 14:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0731EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 14:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687185729;
	bh=oULnFU3jthHQqX6zWdWwkabS0m4oz5nmEsPjp12n+9E=;
	h=To:Subject:From:Date:From;
	b=ofHQGWx3JaR+/9YTT43jghDfeUCagNX+HRezU634+Um/fkHhMzvzy3Uq0mpuYc5Pk
	 +SbY6Wz8pOeIGbIHWMl4J0AKcF6yS8rbwu5HA0r6yXgq7kgL491KuBICNwX52NDrjK
	 zNah7gPQjlmYz4eOkbxsZpem5eBDX+YPCl3KStg6oEGO8qcOhoniCiWyav275LjnYA
	 aQ2I0WM/1MnmvCo8A66VgSQQwDcYHDZQsauno3wOGt+xBjIr6wrFmG7a9Nxv3DsVOj
	 oJIJ+95sySdXvHUnG+aCOs6zXNfp9z+rHvA0VQV73hjTsp4SiqMZbkHYOMUazj/4xX
	 Egw78uTL9RxPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA83EEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 14:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168718572888.13026.306439892836576651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770daddbfb945f05a823d8288c8f115f5327f0c728c01314dc2062247e941387
Date: Mon, 19 Jun 2023 14:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687185728
