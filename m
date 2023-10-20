Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158CD1DA22
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPzIJhJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A52EC433CA
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697824096;
	bh=d6YYYzOlEEaBlCvyckAGp9GbHcyMh60ZWV8Xxz5+mrQ=;
	h=To:Subject:From:Date:From;
	b=dPzIJhJbHHwqRyGVh9SADcpDqtsNFo/0Wr+hD2WvTrQ8sI6pHcAWYDw0tRGP2GyqE
	 j+GQERChrHH45zs1aLZDz9JDB609jdISE+qG7COiMUB6qYzRxoD5rc7o08bh7I5T7Q
	 6OmwAjimYFxaL/zKLxWcnv+bai4BuTMDwcF87eL+t8NlmmG7ARrxDGLdtwtlvbO22V
	 IVBHQIq8v1HmvmtgVKxvzj/gzT63LRtekJxsBKZcVo/BIldDI3tgdPFKDWpOZdSVyQ
	 HPUqLJH5vADuAvJlsXa6a+GkE68PB567c9xCDaK7iyZTrYZpjpISJuiIr8q7srD6ID
	 ibMBQ/4YuRhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E7D2CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169782409644.17692.9036622328564461824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e4f73edf68de8e133f68aaa7fd61ba91f4e08616ac37d0fbdcdb2b1250357a
Date: Fri, 20 Oct 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697824096
