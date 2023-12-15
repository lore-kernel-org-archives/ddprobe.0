Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A9528E23
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6pt/jbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713BEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702642696;
	bh=n/Or088Dfdzzd0lJphigtkmR2ZPKj43e5IVwiFQaOtU=;
	h=To:Subject:From:Date:From;
	b=R6pt/jbhnlrR935eSDY76vXJlq8uY6+k5sNqaDodyzq54FSD3NkSs+AnxlPHtpAAc
	 BTgwU/yDt4swO/2QRVyy7dwpDPArvpfpGuZ2XwLj+9IfoZNgfsn7Y8Sa98yeH5V3XS
	 8go2I5kDQAoXC4ilppQwWBYLWFPhef+Fdakb0Pu2U1yleSwoe3yPciuPn5EY3RNs9U
	 1OSyIqI/F8kqOJppr3ChkUY6fyg7+NrAvF1aL9OL4eyMZBBbqAA5PY5mfxqCjkXhMr
	 GCHO/Nw1MQMjIXhH0w2YMbqJIv4twrwEKM7hHz1Pv4TZHhNnXF31ftzWsS40ByYoBV
	 COQE3tSDvdGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B029C35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170264269636.16441.8030126491268454068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8354290c0c080ee18c9b13fc7dd078fbb00c4c87372546921432d72b1edbfa5d
Date: Fri, 15 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702642696
