Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D842F46
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FECC433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669375254;
	bh=zf2IaBWgd/NQBNqbCNVfxvrbcFzKmcWe2jQ4WrEyjmE=;
	h=To:Subject:From:Date:From;
	b=XKNLy+wbAD07/q3J6MVrWP3VjTQritJv4jJNM3Vk/KoPRIX4CEZCqQlMLsrw9BBgs
	 cdtEaWg3Wk2VAjrAzt8fsZ6GdmwaF7WGU3Lr9FUIi0PZ4XZpcdsurhQB75yNKrbHEI
	 +D+LOr8LDSQ6gaIfNE1Gc5jHofox9s29Sp68UPLcIM3vq2eLQiyyWjYRE+NBJPUqqd
	 ZC16ntDJ/KLW2hjoeTcCRgj7aMP8hj6KoFaCEBiZ+UYMf6YfX0PQWGzjwhW58JB+Kg
	 mazb6q7k1KROlg95+pf1c7gYLKSvYNuYncXw4S6HH3APm/jGOBLro1N3v+rNUpDxQ4
	 vCxBJixcZa8tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52272C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937525432.2117.7712329883929504952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7ba9c334a296b6fee371f322eb35690a042853a71c98d4e6a87119a7bc0eed
Date: Fri, 25 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669375254
