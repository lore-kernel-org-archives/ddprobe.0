Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EE91775C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB797C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686929948;
	bh=d6UdWS3EoSuhO4Y5/TPdA7HiIWiAH5SwbZX+m9QsAa8=;
	h=To:Subject:From:Date:From;
	b=cmuF2OIxP2cOI++RU5Kb0A/pmSVB3OGXFTs3hIPi6eQY9Sv9eoF7DIu4apbrm/Nyp
	 ESmVLZDwgx7meCCe4Bt9rU74CkadUWfcS+m3IPZkT3nAeyHloqFBWHrEOZ0z7189t9
	 qN3ej1R+KZvlFpgTTCnHAlB68CT0fsRcT3wZnSmM8TwikH7VN6xUKXFEq0wmpr3QNh
	 /YPp5oT/IJANndmPM6BU6xD07UhPQkIvkpQdfOjNJWQA8YN0Zs+QOg/8KkEuRKhZw7
	 NlyvmqjTelrAWeAKdGsjSfGTByq5/2s94Rn3+lL4bUhm5Y4xYvAVg3BpISbgjKEM5k
	 JPwfc47ScWiUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3BEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692994868.21743.15181059842649934924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e375b589ad28b953f251a37514fc78a698cc05a17217d9b5324f36a338359e3c
Date: Fri, 16 Jun 2023 15:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686929948
