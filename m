Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A8710E6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 340A4C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686493326;
	bh=30s9qSGfYFO/I5iAPk3TBpL3cFXjSihr5zcLmQDZtAc=;
	h=To:Subject:From:Date:From;
	b=ZkVK37vYF3tIJMLW6oHtuF+HxtsO+IdT9nreuSzTlOM7ruQF5fEAjXkr/Oxyu/eFn
	 s45SSztySz3340brZjsLBFZyKTHFTz6cruyeTEjfb78lpL58F028hGxGtRRE/1N1yX
	 6P2SaxHv8m2uAUv6gkVHGOqv2EnjwpuTTRORnbEH7c5G3EYyHXQWQ0+3C+LNMOJgNg
	 ISAdJkaPGqgTQNVOAKDvuQ8YJFPjplzY2jDZZrR4/RI5g/f/rfZ335U0yC321kl8c+
	 rN/jxiWlwnYFFPKBgsJdUpVW6vpzyfhBRQi4A3uc0jEePQ9IS7tZypuJ76oz7Ar81+
	 znC9N/NknGTLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03C4BC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 14:22:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168649332598.5141.12353453608644011726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7119a4dca3e5edc5631d7e5cee9663b7e32bf562e14b3eaf2870615d7e537f5b
Date: Sun, 11 Jun 2023 14:22:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686493325
