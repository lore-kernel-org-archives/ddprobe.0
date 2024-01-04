Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BED2D021
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2560e14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458AC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704410296;
	bh=ON63sAbg8OKwQDMIMJiUvYiyVc8lXyvtuWwi+hlNN0o=;
	h=To:Subject:From:Date:From;
	b=J2560e14fQCYZ2BrhkA3lUIxCTJ8hLXk11r3IgFMPW1r6O+zvjH4BhW/eBone2ZJY
	 k4dtVZOjf0MBAr85katCars8Bx9KPBzXTq5CV8yWBkOC9vOeWf4I3FZlHKM4gX29AL
	 oWToWqxVUIgLus4oU96aWpHLYBFvZOFNuwgThOhAAy1H0wcCN300e1389DogSXGDr/
	 +A8pOhb9bXLgDVne0ml5dnZ6FUCsnaqbMmN32gD6uIo7mq2lZui6GPNZ4rH8QjqGwk
	 cRumsSkKyzhuWDOur8rCsHRS4XqmYaUQx82egVbvuJURgOdBLbJbnsw8436LQ4zIuH
	 Z3JGfdU22sWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F85DC47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170441029649.20158.13242766549496123451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ae5b76ab94ef0adddc4c4ed7296f85c4bcd01900b328f56229a5af1ca01bcf
Date: Thu, 04 Jan 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704410296
