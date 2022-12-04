Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71135CAF
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7581EC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670177454;
	bh=B7atrS1iB1QqA87FVY8VJbb/8bsbGBwQtUT/cLqLeZE=;
	h=To:Subject:From:Date:From;
	b=eE4IrOqOGOYXGENCk14T5oJL7jxIUyfEGZwJhFjjnSWjQHFAlHZnjJbvdd0UjuRfZ
	 QDIjAjDubIzcwktd6V7PplLsVbJ2nqg/oyNVyd2GOmfeXkIRxcNgK2D6Tv3DXoMTp/
	 IdWntLjk1zZwo66rV/N77rbwIlOezBUwKyjZ//i90zXTYIkwbuM6pSa7vDgv93QSkJ
	 UuwV0UOmmh8sFQtWjlMTu56YV4M/7ukQ21d5yf38G0VpvQwNoDFyIlPxQKu+F4BkIt
	 wz4U8mdqBJEQrUvgc09tAx5GPFMHZsRVIWMeuuMLNDxsYFw/ml9PpQQcpxYp3oFlRo
	 gDQxNfY+KI7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557DDC4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017745434.4710.2801303131235302070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466a725be0e4b579e5e05c48452bbd6b8f08502f79d82c2deaa6a15f6604c975
Date: Sun, 04 Dec 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670177454
