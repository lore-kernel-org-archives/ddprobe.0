Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412E4110D
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 07:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E242BC4339B
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676964545;
	bh=6bN8Jjf9kCM5fFGZZ8wCMzbqvc3t0Joepvqctv3IEwk=;
	h=To:Subject:From:Date:From;
	b=oHUcPlLORZu5eHuZnZHDE5uuRB56mQS65VASmyJbv6ILW0ytP+A17aajCSYCFOaHf
	 EE3wmPAUsnFoMqFIsEUNIZ8h+a1R/7yuxiOzNZwvLGZ06nPT1TSv6GQoPEs1hJb07/
	 x+BAIDe0nSCQmPUFdmhj5wDoJz7Qc32Vb7lOfHSR5xhr9o8phma3XTHaljCmLJLYQw
	 k0FEmealAmx8pD7A5zJZOBAiIPNmbmibzgUTriyYruHnp10yOjscahLI0xyPP9cfUx
	 +MiKf4cEIV7kG1898yWa1STIdyKuUjBWd4gQSQcqkBAmj1c8kJWGtKz7UJC0vc4cSW
	 NwZSrWFvO6zaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8C8C6379F
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 07:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696454576.16077.13245927730062118844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacfe512d9b66ccb58d70f00c7065a4f962e397a2499cbd194e59d006d92c3de
Date: Tue, 21 Feb 2023 07:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676964545
