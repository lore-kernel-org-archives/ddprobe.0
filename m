Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A92E10789
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZVQVLtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AAAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701149896;
	bh=1VNakFQ16MLYRWih2RUmbswYx9g3vMhXoq/bVmHSDxs=;
	h=To:Subject:From:Date:From;
	b=uZVQVLtcWOOwb6aIHzUVgxATJ0EGE0so6jhGF9ZCtqnleHEfcVoeDTyUivPS/waRO
	 RoJs9K/hnpNszua0+ALQJN0PYEOFGAuQwCYdwAgBrzAFmoGJx+jess4ZDz9uUXe1D1
	 /BQm7VzxHKV6UuQIRaRQ1Nb2cb0YYxsTgvD+AXZLEitoY6oUmHsJUt7J0RwEJKzXM1
	 P4eGivQJIMalc8PwEbFu8ZkfNtjU2kZhv2MHorX1zMk0VpdIwed0bfZd4BIBaY7oZ2
	 g6918GnM8eiSJ1zIU27X3X+gk0jgL1m1H3sd9OTczZka1Mm1TPb6YsVvUAP5GvytZ3
	 yeCaZzMidmcgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E28CC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170114989637.15977.8645031172586588530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e772f524041d5057dd8014fb942223afc3efb6db57bf33530f01e33ea00a598
Date: Tue, 28 Nov 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701149896
