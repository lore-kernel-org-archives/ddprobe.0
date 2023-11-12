Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151FB1842
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gviRtdJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8928CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699759696;
	bh=EF3TVSydCoyphr1GzdD4rG5m1IT1N8jp1tvYrVWjXxo=;
	h=To:Subject:From:Date:From;
	b=gviRtdJBsU7NyUay6ZHCsLVKltNRjPGq2Yyy0FUaZe60KA9u67YfB1J+fQpQTB4Q9
	 awamWnnA4/z122GPkpgsKvOnjjk/8Br2B7hy5XaA43TABpEc9ZR3S+agUksmHJ6+hp
	 1CRROJ54ZPaa4htYzYa4hneUGKT2LIXFLQBPPNUdxjErKbehS9dPKnBujjQth/NQxK
	 F9Vwey0fY8lb1BbC6eoOhJxyHH0n0g2S3I8YhDIJGZLGauVicvX9BoL6XpcmsnaJC2
	 rB5CyOlBld4oYtevm2AMXRkRo6QhZ7nAJBJcok49PW3P5oeO8ei1qwgFqSHKSoH9Y3
	 AUpmD64NsyVIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A6EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169975969641.1683.11031433314983594610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7ce20bd9ba4582485ce6981bcb69f23c39b8f9f7059a8278876a6fbeac7a3d
Date: Sun, 12 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699759696
