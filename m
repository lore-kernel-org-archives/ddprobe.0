Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C80065B
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 04:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2113C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 04:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676779626;
	bh=zL41g/aJpIuDsWurUheZ3ns51EarZmNxAmi8ETJlxjY=;
	h=To:Subject:From:Date:From;
	b=IBplzKtyz2DSBRLlUTTq9H+/TzrIQ8e7+m4joAan+Yn00m8Nc5L89y+aUlTjAI7/w
	 qVhLHf67EMW0mzoirNXdG7QnUDJJ8hPEM4Sursq6P24+3YU6myfGfY3aAf2iZR5Ekl
	 nqrTEZd/KzCyrBPCXpaWVAfo6lJ4Lq0AuOYa+mMBLI3qLpQNpzy2Bh9v8vfnainHOg
	 fM1b7c/hnuunlxq00/lrMMmQ+TETCWNhKHiLR6uxhs7uWYX2eCpUICLjRrko455Lfa
	 DAzUvWV41RP9aM8+1GaLTTz/fOM7EZlXXO1Vq1k0Ek8994lHv5maoBZx7K6A2lcy4a
	 PSCOxvoXJkkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8094C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 04:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167677962584.5328.13416412804191613093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2d0f844c473af5da468b64257d3e9cd7dc1050bddcba78b8651624caef1723
Date: Sun, 19 Feb 2023 04:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676779625
