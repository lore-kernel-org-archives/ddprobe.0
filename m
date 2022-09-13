Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B787F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B676C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663063253;
	bh=PEkLD4THBfAEHCHW+r7XCmGW6dNi4u6RaY8Ge9QNlWo=;
	h=To:Subject:From:Date:From;
	b=Y1mzHyCzt3EMYFEma/qNjRo2mcfajhkJsvBsnFpve95KlbOGjK571lEvPz9qiVgxW
	 fsHcCrJH0pNuKrYGiG/KKgbU5cPg/4IoF+G1TqsmNbhAEUQP8xUI1E8SoFenITTzeQ
	 jiOOY7jGxfNNHJMdIVHdV7Hx3lQSnaiyoFpBzru0KRxfX/v8Vjp5KrsaIh/dBgHkW7
	 6mosdEs1Z3vYEpzrr5nnjrwVgSmfZ7XCZdKUa9+VV/TAfAIqBQOLVbQ6d1G/lyHxNC
	 MjRuCImheCNqk/+S3NEIXpwIWJMCJkgcpCYdyQ0iZ/z50AsBWydwMJkpmR6OoNNlPp
	 X5IactwQy1eWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A11C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306325332.6765.1213494083174482747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fa0d87f45ede89e7ace7dd5f791816429410102a5075bb128576f31d5ead85
Date: Tue, 13 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663063253
