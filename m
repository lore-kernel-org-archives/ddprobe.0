Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E7917C2
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 22:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6717C433CB
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694559248;
	bh=Mf06OO7vg2hPiaJAWVB6qOTjCLBqA26NiZnuEt+nGzs=;
	h=To:Subject:From:Date:From;
	b=ANnY0I5zS3qWlbV7gIJoUUrHIzcoIjGzY8yHfRVC+UeRVULtVe4c98NqpyoR5gq1U
	 OR7eIVIPQZxFBmEkSxN+CjaMYa2eN/kUSf3kS2rx/BgMW71mfhcyE2AY8ODzwWdKgX
	 x08W0cz2ZEk/hQgj/XMB5lkcU2Kt9sZ0i3IRvaBuvOoZ+rg3+QhoQPy/xOaOhukuw0
	 i56FIsnm1U04do4JjQQ291bcCVITlWG2QFRRmWP55qL/oNqiFxNaD5SZY8vxSKyH6A
	 AdWL79GR8I0bQjY0uZcY3qK2MLAXgmLD/f57tqn0kNDpJJP8miag7QQCHyvG9sWrrN
	 lUG4qf2QWwxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF9FEE3F3F
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169455924871.6348.2407273901041815346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b78f7089bf54956ea6ac7880a0dc3b4b897ba093463fc48ea3e93821892c8b6
Date: Tue, 12 Sep 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694559248
