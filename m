Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BF5211F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96281C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668963654;
	bh=2sKQRQRd7n38/Yfp4Bixx8s+TLt9WR/a3rjMrfR4ixE=;
	h=To:Subject:From:Date:From;
	b=dzr3xoUlu91Ac4PJjOxLztdnpI6Z3M1HD/jF0JnKX8jtXvI9+GpyMQpA3jD1nhGQL
	 VLJwG5MLSQCWhHdQKbYdcqOZQr1A67DNH4gZeoFDa/oqLgPP6wPJSmIg3qaFgVWPr6
	 O+KY1HiQxkNdvlGTLVH08sF9enVjmamuXrAw/Yjsd3/b6py9mj4d9SA+pizbsBZjh8
	 l7HlCNF8uZ0k3rdUlQHLc3mJMEhMN3EpVMJ2SlkyboEy4PaMTrJ9hRRG/qeNdiSiF0
	 jQNNC0dTTnJFtjhxU2gjlIq5Bo3Nsq8FYbD3iS2qhd0aqm0ESStGP1YiKLKxxuJXZi
	 kX2lKUsdqIy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74286C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896365446.26391.7762833905658306235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486f75aeb2fffc5f23015b6c1ae0e69fdd5d594124afc4fd2e55c0d3918fabdf
Date: Sun, 20 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668963654
