Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F281C168AB
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz1u+ooh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E08AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699014496;
	bh=2kDYbsSNKcbate+20PGXQIhbPpBnfoFVjb8JnrWJa1A=;
	h=To:Subject:From:Date:From;
	b=bz1u+oohbZ45eb33/v1h5aKH9ZWmlhdznt59/tfA6Y0VvywSiaUq3HL2iob2A9aRD
	 iVu5QOiZisj7pko7PTRkn/t3rNbk05kAgpLIogAUUaAnQXZYzfcgrIa49ioaB7vWSl
	 dHIULS0MHB5cjqPndBrsmaDzc3rI1LjDZl0q8szRc03kpWQ+D6BupB+X21YidMlAbF
	 Tn2khTpV1YcvlD3GhE1zZ866oOwy0mar4iy5NNKILgKYjrgIzQrroTSP0O7H45CDRa
	 dQZYOAlLzCzbxlusoqmOwYXzTsiJqCPUVhLoQQA43p0F3p32Q7JnGHXtNrIrwMxwAq
	 qkqWF7mAITwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61952C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901449639.9334.6992795085339865848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a22344c7814f7c52c2f38eedfad68b51136981999658811f299648a227a936
Date: Fri, 03 Nov 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699014496
