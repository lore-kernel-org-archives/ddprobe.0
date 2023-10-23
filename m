Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C247E8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtGE156/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE55C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698022096;
	bh=sZPJPAOsMdXF4J8bjkXk2FLpWho8w3n+z9k0DGsl7pI=;
	h=To:Subject:From:Date:From;
	b=WtGE156/dZ8Q8bI4GKbOD604P3gQcy9LHIgi16NoQiO770hx8OWiYkb+7PzVUQn9v
	 ddOU4WnAlYtIj6jg2IYEEWAmoplIwooyZJ2xcwpmIqo8fw9iIg2qUdPSHtMUysQxbF
	 YfqNDAd5RZbSYoNGiHPwVMmnyzsQftAd2fJ0AlEGyIWhZpRxIf13MFn1kv76pzUrcJ
	 0vRRTELW4njZdJ2gD5XNLxAVQNykZyJAuDapLyNAwT1sS5/hM7NHe1xcykOJ8J8rdI
	 0J50AKICVi4J61DJ1XmXxoY5gwvN4eewvvKpHnKz4MFaea9QmL8TPbyTGEpKQgIgem
	 qwcxSR9fkcP0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCC0CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169802209638.12948.12988942601966351980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fb9b79c8a01ff197b05704615ae23052318a05bbb1eb1ca7c63333344deb96
Date: Mon, 23 Oct 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698022096
