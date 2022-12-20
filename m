Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7B84C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8876AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671550887;
	bh=jNydz+5InY+tqMg7CFfypZ8VfanWAQdGcQBUxcyil7g=;
	h=To:Subject:From:Date:From;
	b=Z6ZMVRgflLd2H2W2TY0Df3JbGkf/UJa6p+BBa8IjHzyQO0umgfZQGYVSCXT2uupu3
	 vvI3/MaXIRqQ5hgyjp+GviMaR5CEcNswLPcu4dB5ZwP7CgLWqYwkOVlLoV1aj7QugN
	 C4a6beoUd0h2P17rGHHQ/oE1BPcc/AdpheHg4O4Hq2wOAXYUYPCSKtRhy3eaQOPzpv
	 1tAAtaVu3XKUMCtrz6kHm3JFQmUsp+CU9zJzhghRUAHJXX59B6csbCUobuY0zmdwHb
	 aE0gi7mMLOTYIFAYBGQVgCO1SmZE+957BucO7BMMA5Jvw9uYb6IqK1pBuiKia+SHh4
	 WQipI+JH/pF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C555C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155088743.9544.12512048232366033697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b3ec74ba0e558c8e9765f302313af39122723db311da6ad06ff22a8b0350ec
Date: Tue, 20 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671550887
