Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA36179
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37CDC433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691283188;
	bh=ONpvppZh3bqTYy4JhavooyUHUWXgSk8BMtpzECevIIE=;
	h=To:Subject:From:Date:From;
	b=SC/8mf4qkDdMXH2fRh2+SEVINt4YBDCxMNoh1IDkD6nDr3S9geifj6KDxPzD0IN8w
	 UL2/xDtw+R9LxWMd0wXOOZQI/F1HXMGXZSz7m7FdD5tVvcGS0yUf90IIzLIFEejRYO
	 whFnGzmejxeVBYVi1QyHeyiTOa7p0Mh8eVJqmaP5y3rYfIAaR9bZ1dat+MTLFHcLQf
	 ZE+3TuYCPrjOJw8tX2VSaeMDUaWJhrNY8WJVIsfybV2jxo2mlX4Tk0Nk3oUNGJ9RYT
	 RX9Nrdt732u3vPjKiPy9JnmTYgdU2ZEbZjTfaov3g7TxxmmBP0MRlA1F47OxcuYhGd
	 4V9hMelTRHu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1661EB64DD
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169128318869.8842.10908466035117546244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df76a8c3a668e1e892f3b9b8912c6e4457e4820663866afad94d4da735fdf730
Date: Sun, 06 Aug 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691283188
