Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B8528F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801FDC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672419087;
	bh=Ipw3P87/C40c1muay/vNHDGK+iPzpD55ngE/d4QOQNg=;
	h=To:Subject:From:Date:From;
	b=gPo5kxhKzKM6byesT3N5vFCGQCgcbJ9WnYKi/XHmYwJfi8H3ryPyzKSZ9o/Tr7QyB
	 X/q+4HVvnegO5wgEbUXDU8vDF+ywnDwFLc4quhX6pcqvE44Uc16wnIC4b2LE8ml0xb
	 C7hgdRL6ta0T5u571HozTg8KTaYc4+9ZtVFQHi7whrOrOh8ateXDHgtlsF434vqhZP
	 33KfH4OihcilYMirJhpIbV1Jr0JHDrQrNY+gbwyxgMy06B8756XI07rfZuQi3ZiJom
	 bVMH41KEuQ39yvt9/1cumWWzDpcxZV16K8tCBV01h0wgF0rqYO7m68A8tnCu5Dzr4T
	 fgBAey+EJ3R9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DB7C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241908739.11756.17521007308263079525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b1cd3058fecdea4bdf38d7d9c1999406197898bedf1a7884fa0eea721de3be
Date: Fri, 30 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672419087
