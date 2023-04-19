Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368FE28F2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D436EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681896845;
	bh=203QbBbj4Vn4HNTRq3Xk0fK1sMZ10G7gp/Sd3xbt1JE=;
	h=To:Subject:From:Date:From;
	b=dHt/80pbpudzrD/gIYglzQjL2eQz0l7X+iuTKdy4Bcs7NHdNDubKK5/pyTunO1+AW
	 5wUXdJCT2Y+rdb2ac71c9yit2B37d1zuJkVl4i6zWXYnuGbGVbLQIAWyXu2NJ+XyzP
	 oSYvMfAdggaqZ8qBBC3HJxcCOVVurYu8Kna4tYj5W+upagCL1MxVY+ku1ARjXfG2Px
	 4rGYIrTw0Ji6gDkdgWS185YGOqq9Ir7hJHbMok+DD7tY0Yj14W6VGFHfY9codtRwbK
	 vwPakxdR41zWFF4GfcMG4ha4CRbMNXbiPEGoq5f2ZmpME9+ITozd6F+pqT6XbecrQM
	 Ey/IRkTpquh5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C0DC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168189684574.23185.7731477925393535692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c798479c29ef180c43ed8f368b7d46f18882c3f2c156b90193194fa9dcfab2
Date: Wed, 19 Apr 2023 09:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681896845
