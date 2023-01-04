Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7E17C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88DEEC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672803087;
	bh=jZ5BHkNAsRMnluwCY35W2k57uJQg1frwC5MC/hVjJn8=;
	h=To:Subject:From:Date:From;
	b=rhsbOmOhdme9qTpgX8GHNfhicJmnEhBZpFZdhLDRIPpcikdyKO5ZMIL5FrkTVIE7T
	 /TVMpjlDWaFxPmbfi4tr4y8/6NWtBUa/G7nMem7aeVY4FrHRbb+WkjZpqSAesruDRI
	 OAMxDmIlqWtH0AbmpAl3eT72rgv60j0FxwL5YSqlkFxWaLSJ4F/Fsc7KJfflXsEgXG
	 5jPTlSTsznd/EoLHJP5F6YeT83zT0DHGXPlOxYs0Hf7Q2vXeBVbFf0rDQe2My/MSZa
	 PSlpI+1GQwxLwsPU45yEIBRo8TmfmALzjEXec2pLBr4Mj7HmwimkCzv7c7iG8F+Qyf
	 Y3Kgh6XTZcrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4ACC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280308741.9213.3549884595327745772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0798dd78e3105825c52af9653d90b3f20e321b7db28f328a5cd749e8579bd3c
Date: Wed, 04 Jan 2023 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672803087
