Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D450ECB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2FEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686952148;
	bh=2ngpPvbCI4OEh6jYcPQFHOZPNl5wXXyPy/BpIwT4bOM=;
	h=To:Subject:From:Date:From;
	b=PVLaP60rPOz43Rc8wS39+iLkLdQaaxY29GC1D23cDXLP0GoqJUD4RDq+6fD7JmyaS
	 pQgzdBkB4Pj247F8bqGxjDOFWKnAinUd5+221G0CYe+BR1JsGhuZpqcRZ7A4VFPhi9
	 356KdIs6/rWK16Sf7D+whcj91ms4zuBN0whIco9oA0GG/QdVPSuWWIOWgijqVNBR0F
	 zvnZphNKpYooXk6H3LWHAE2XgqCqvkV66rgnnZPq757k25ZCtegW1XD+MuwenZqRXY
	 471qTny6fE9TR1ZaG1MQ+zOitW5EzrD8E8lO1rBtIumli9uJFTmGV9GPxdvc9+3uD5
	 F5r2jZOmHlehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2678EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695214872.28702.17505608120261240323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a946f135b0d57d36dda3a4cb1e1fa8b8dd11738d4995f67922a7b0bde6173bb
Date: Fri, 16 Jun 2023 21:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686952148
