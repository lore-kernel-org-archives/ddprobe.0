Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC138470
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7546FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671025287;
	bh=FPTB7ISGcW4wxv/COuPSYlKmcskcTpKyS7qmjsNTbWY=;
	h=To:Subject:From:Date:From;
	b=X4XGULMJrccQRk9c/ZlaRA7jDYJi9VsPb9OfBdhAVrszRy2z/4YyjW5xOetTJ4lou
	 divdWrmjzJXojg0+M3iAyEC0CRKbEtbu0dVVtelrYAEOgstiSo+D3GC9BFyidRf1M6
	 iz/XZRSwdHTASu+H/XwLT1cfHmcbw9GNC2/CN5Q86giWoH6iopa96Py95PXBscDi7R
	 eT9lQOhaYtUlNyCtxKk+qMzCXn4FU2PAnrxN1fjAZtLC9Um6jQrBH8zimK6khD9fGV
	 oKXdZt9TCWJB6/JuZMcnhUetZl3tPjCNv8ayau3OiSwbQ8SMDS7qe6QZkSxyBV/B7A
	 EOBZKYehal8pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFCFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102528737.26262.330750288765572277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5ed310e5d85f5f4d8685f4c6099e063fcea56bd4d2c3e4136fa50bd93234c1
Date: Wed, 14 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671025287
