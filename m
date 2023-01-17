Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44D11FB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85FB7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673942487;
	bh=NRw+SLr7BQNlLXyo99CDh50M8EjaRCdhwZIyVrZmQLA=;
	h=To:Subject:From:Date:From;
	b=Vkgk5Mk2WMUpIavK1JhzNg7M0mYbUUC+ha+lt8/x3JytDuBJaFCTUD20cuF9nym6z
	 eJgcBYqXZQ6L9yijD1+uJMcvQwN+TjwnEqUuSD5pDwn2qA5e2+byBpPQ0xuEzJPq0u
	 xDR0SLrJ6JvIkDM+n1idOBMbRZT7bATnBkbZUZwIJ9CJ2XV9ER6NvwLC7Trm7ZVQA4
	 ZqN7JdRjG2l+WFF+44yH6rUFVlTGDOTkASwQQPj1ORdB15pGX+46/sAXGaKPRaxK8z
	 GMoc+5shrJj/dhDh72Mrcu7qnsKEzCUnDo8eDRGvtHNBnNnVt+KaJq2goGP9zSLhmY
	 rMptLxLzT0yVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AE1C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394248741.18396.14179863985102507511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad37380154b7d43e50b12109961194e7b5f734a3a3f2d3ea5bd319c0f8b60bba
Date: Tue, 17 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673942487
