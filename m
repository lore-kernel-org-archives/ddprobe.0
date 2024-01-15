Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136B0199C2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYZHzUta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845D6C433A6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705329496;
	bh=8h2d53ssfBw4ODLeFkwkwJe7cwibNwLzo1G38F3MwRM=;
	h=To:Subject:From:Date:From;
	b=LYZHzUta0QarZKAvxz0NicbG4eQIVxRzGbt/ATMyGKkcQ3tp3193RmyZnLqCybDg3
	 lKrRScM53R4mwGzFxGHmE5JcubL4KYfUNQt0W0D7MsBAm4I2rcdOEfdMw0NqsdAOWD
	 ZxzIw+EQ3cw/DsCjjyscdhQfyrnEq4BGBO974QDfg4dCUYzEr0TS8jAASUKXVxgzll
	 k5ejHUeHIvj3rksNDcaz21apIeA9bCLPAbuR6kRfuUFRRD6/dBui81W2dqb+9v+fA9
	 qepuVEaQIbS31XwrT8+9logGE2V9rGteThIzclBB+FkVfPD5Y6CM51bOvDSXnJ6iKg
	 +dvG8RaaRFpsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669A5C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170532949640.12745.16160462462431591086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48270efb34e87171507037c1e9007e63f7bbac70da64103fa74d3ce31ecb12d5
Date: Mon, 15 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705329496
