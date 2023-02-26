Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586737B
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 07:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB71CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677398165;
	bh=7ro+4KcYDUVhDOd2VGuWDyg1Bl+VbuMWo/JkNmF4OFs=;
	h=To:Subject:From:Date:From;
	b=gRvP8ZSD8WTEF4vpL8MgBKLj74grCKWPEWYKqTxXKIAVtFebOiOmlZlrYg3ul6Bqo
	 clCmJ2Cw6ODLPGGBrnwzLQki4D161vmlno2NQ6pS3u+DbFZGiIucCU1CzKPrHfCzOb
	 RARChdoS9yjVHm8dydjpyPoPjzOwNmwCnwWEF5OYMdnfKvbcIc4mhWWGEkCoK5WkAC
	 PbEU3qo7LELUiCgtMyfHI05Gbzj5GbrV759dj3SmMifFIE/ouhQedgn0NW2O9fFPJA
	 i0iD0m11LqOMtTwrtRDjbVe3hTU4Ya1mROuI6CgTnj7T2dHMvcYIwNNctx+MY4lqnP
	 Tq7s3z/L+40Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0747C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 07:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167739816572.24081.17107488078385013590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413c9a27efcf5b8ecbc56b8b5d3056743ce4e1e57b4caa7f042971c0201c9ed5
Date: Sun, 26 Feb 2023 07:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677398165
