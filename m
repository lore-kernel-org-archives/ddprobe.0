Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8683224
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 17:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DDCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679161925;
	bh=5T6G6AsNuBzoNJW3m6bK8iwy3glJL5z9BdFUm0OyiGQ=;
	h=To:Subject:From:Date:From;
	b=qt7vjZok/TzHhp8OubQKV3xFZm/o9LUoXUaZnHt+DUB2QoRwp/Nl5fXwNRIQne1uH
	 dgRLsS2jGrRkQXg1A9nAJEfNvzxywEOLnujiT1fauDa1awqmmaqvQ6UC4/rYnk1C1y
	 +D8HbkzgYPfpzIqTIw17WHq0GIo2aHasdRNsJGVBrZAQqKT13V6PQAXn1k1seoA8lH
	 pbQElRoCXcg0zr9UqrD8l4Z5aPEF6ZwreNgv6Hy7M51bZ5Li55slw8fNi7KgswbWov
	 qeYIV9/vPj8+GRWcynGwTtBtqq8fgDw2TSOj75ki6eDJvKBKkg+1UM2b5L5TykdCR+
	 2PmYrHkXxSWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB0AC74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 17:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167916192576.341.8401821593332773328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cdcd861bc0b5eb5c17330ec7ba49a7edea9982414b136904454e0a8aaa4163
Date: Sat, 18 Mar 2023 17:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679161925
