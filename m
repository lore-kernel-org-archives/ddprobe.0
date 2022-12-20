Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59B21112
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC43C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671514887;
	bh=VziKgdTU2JRx5hJafMSmP8WkujayRuYPd/FU6uRRfDs=;
	h=To:Subject:From:Date:From;
	b=VHovLjwB/9p+gmN6Gh7h0kvkQYGXy53bA35ShzZ9Wfsijk3q3B+ifu3cbTHr5jtG9
	 iLREYKbo0n3zYz2IBsIjDAbiWIYl28/T2jnRS0qea39HNAfjn5w6bmcnhsW8b+tDxp
	 5MA3ZOy+LMKxA2Bb7/gtnHpNeNNL6tiu+fdNK76utHBuAS7iVoNFJ5vsc4sGXVqrC9
	 9B9xZlKJdN8h8ZVdRIRE1glGZQnY+ISskR30F1U1D+QHVud5AEru0y6zelgZL5eUpe
	 2chODWCkl/LQMw/RVJjzkGSPtijWxKKg8pqCcNfDHlPH9wOdhn+UZ1uTlFZl8XsBRk
	 W1SJbhYQLdTKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F140C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151488737.23468.7261333698113746317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a34995ea218883ba7c863536a881ea4e36f382d2c264e5b481bf8ff72e81614
Date: Tue, 20 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671514887
