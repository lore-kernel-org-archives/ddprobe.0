Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948D63F4D5
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 23:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15AFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 23:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695254108;
	bh=4N7VUzZldYnKAI+adwJs+oI9UPktE55CAEHrlGTQpBg=;
	h=To:Subject:From:Date:From;
	b=g5oB6LRv9oykM9APrRm5sIYZegzLmzIYzAZ4z1rUVh5MmvOoSNpkTQxscdTw1hECE
	 bs3/27hBjgmuq+yygW5AtYf0pa83vv9g9JoZuA+MZmAI2KQzEh6KlRu0npmU/m/yqz
	 jymD0w/8xMuMnvY3onItahzDUX9WACRDLqK/BCLSGmvShPLSRRhmz6faflqEqgScpl
	 DRCxnduEAY8lRlwuXZBp0dXg/vZ6BCXDCaUIAFW41gUXaUSb4fCUplVJS9rhCAPDGp
	 xAJyayiyeo5UtxEtJetVsVC0W8oTwme/Eb65sUcV3GuUkgGgXs2WEKiqKEbfTjSREv
	 ujUYrbrxWBZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FEFCD4937
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 23:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169525410866.4821.17117153415917941700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9071f8e85fe4b7146b72af3d95feb71dc3f1949be81ea84da2fcbf8a2c9b3b8c
Date: Wed, 20 Sep 2023 23:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695254108
