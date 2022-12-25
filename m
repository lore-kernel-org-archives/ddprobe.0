Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EA420E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B643C433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671982287;
	bh=DnMg6QYsPNm+2pbnLMMhJK98Y6wyr5ZxiovGjOJ0j0g=;
	h=To:Subject:From:Date:From;
	b=BYQCH9z2uxpK4mDZeS+Lt5Vp7BI6mGlmHBHdje2ywX/W/vjQmtEK91tRr6jP0/Qht
	 gT3mqfRQmcuL56C1tlSNJviotyodaErjpWlvLb5SQ0ae/Yi1XL/5Gd8XQza8iLeDef
	 zcHISyUJVCqfyGzLpYzG7xeS9iflVcLUIKXJyCQXAXw82HUdb2kHGGjumcsxm9ykAV
	 jtYzbmAD0DuitULN5vU384tZVXCWe9PUOc2Y4pXMT1S2KvlCBdN2VW/JLa+UddKTGm
	 5tTmxBnD49mjIOdBQURlA1oRf/XT5cQnfaEMRfT169jf21VMuc/jahI7ZR8EvhSOAA
	 pfSucwWJgl8TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B7EDC4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198228749.16695.10602657577164974262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f20e3a08ef27b102b926058a254828b45c9ef9fbfd8434eac61bc79e2789ff
Date: Sun, 25 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671982287
