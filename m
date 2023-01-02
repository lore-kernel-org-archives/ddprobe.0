Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81A75667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898B0C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672683687;
	bh=K0qfZLcJc6WUJhdSeTsIw329RyOGwUarsEIEbV/XsFg=;
	h=To:Subject:From:Date:From;
	b=OIW646+CaJ8dy8zUxHa9wUizsa2xBa9MwSJyvBe3jNXRvRNr2QO7qrGCgJTNk/ZGx
	 uRTWJGKO2tnXfUbMCgrT59lK49E1Jg1GnW7l1pYNm/h+oZu6W6trrlKCA/o5Uy9SC6
	 wXbH4c+IqTXfzuJ1WYVGxs357fl734fhZ304ww2ZndXZ4POJi4N+TS1xQLytlLs+xF
	 PnRos/zuzTYfpjuu0poeMBJ1AEDQ2WEnJ2PwKE4vqs+tCkHyhhbRrrqUpKvc+jkNnz
	 l2C5OiHy4H4OjRjprnGkr2DLUf6sK/4e80j9Bslp3N3S5tRdoZmg1cBm+qvZh7hv2+
	 WN2dGoKFQPfrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB68C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268368743.15202.16281457909861662729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4dfc312762c9db6d8b5de6cd1904642935cfc589c3c1074ffbc02d7af7e505
Date: Mon, 02 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672683687
