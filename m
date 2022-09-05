Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BF53D82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72038C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662376853;
	bh=OiScW8h3rHmiysIKYDmWSqNyuqLL/jjX5cHcYQtyhJA=;
	h=To:Subject:From:Date:From;
	b=nxh5BPUcvVPGdlalOEX5CaJnXOQ7I5OG5Ro7g2b7Tl7sPHkv8okaFNLaTUuRECTvK
	 q1riCJyQHjdctjIBloehh48aJXRNFrd1tEw/dNs3/B9ZlzoID3yGGOJYfsWG2xlZgH
	 NcB9YwHettjIqKg5Peg0NK4QqRJ7I+Z1JJP9nJPv+C0N5jlO3QdQA6RNnjSIMz2eMM
	 G8l7x56D3OqJC49rbkmShMmaClMIDAxIyaqF+kmz1vazx6UoDJWYlBrQjx7C8OikQn
	 mUFC6ZgMeQZ8F/0psmpkIrVj/OxaePSHwUvVDWyXsKBtNQ9AqjO5cwM4zQVckSbbk9
	 Bf0LLISJunwaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56725ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237685332.11550.5262133842063208547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196b0071b3381463f87ab7a35c632d8f12979922e2c74b046f62d3586c681fb3
Date: Mon, 05 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662376853
