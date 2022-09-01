Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9DAA23
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D931C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662003653;
	bh=ZNCiy6RCEshtw+4cey5zOjrqHg2ObEozZSLiZB4GPYE=;
	h=To:Subject:From:Date:From;
	b=C8wVCbczt5GLiCOVeA9kuvsThhNTncfGvIwXDJCaycK3QwsvKLYkpFZaSgEOCoJ8k
	 sbzOE40PCg8FXKGk84l7bQ/y+xdb25mC76uQSyM2078ujTdZ3gd4U7s1ovHPN61jRa
	 ISEGoF43wab6RBEZzVhO8pd0wj2ivg61HfXHWufed9XK6gZJcPFpkVlQGMgryj60Z1
	 3RsnIUCzuQT/o+nNbOglxgk3NdROa1+Zpg8X3aGtTr1KMwZ9aaKCaDDshqbk8c+Hlb
	 w3dMA5ES40znPiaxc9H+sYPljnXSL3dSOs5M/jdwr0u98vFwvdhwAQc0f8uiaykb7L
	 28lFtfj0HCcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E319ECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200365344.12269.9666175386828774542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd36b0ea31169cbc8e64c81bfe2a4679de42d331b171f24e0fd44d881f25165
Date: Thu, 01 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662003653
