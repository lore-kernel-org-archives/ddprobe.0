Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA261FB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844A0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673943687;
	bh=aByNCc9FwYhKa2cv/hTyFr++gLcASqfYewgNFthsuY0=;
	h=To:Subject:From:Date:From;
	b=aS4HOF8G6q5iOv4KVj2tH9KXzw6YeYcu47E3cJB5xyCYMPe84TzCVHHJJtrpUih9Q
	 4jJYsicAunnjl8FFW8NRUuDbazfQghIeHQICxVBCs5ePhByxjwG8y/Ddgefv6vGSyy
	 6dW7/sX3WUBLek3K4++OAvoWtY2IPNDsBvq90BZN1GGxYS6pVQ5NqhAEo03UlDUYc3
	 az2qNseNcuaBkovK1rJZLu3DBvOrLRYRi6ml2KY62k27db788FlNtT0RgxV3qaPocR
	 5NafaUachY6fmpncFfRxZ41lDnUS1v+qC6g5V144eL3xJ5e2rTL/dgiEWmL2KQrH20
	 PWOfudNf4+0ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B15C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394368740.15499.14771785883389443392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc749b36daab01ffbb114cb2189fa6af938bc8b9566ef43cfa320afb8d3ca9b
Date: Tue, 17 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673943687
