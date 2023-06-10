Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D0D3236
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 11:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FADAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 11:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686397746;
	bh=DR7P/tQ2o+RWRacklhDUc4QICzXQ1+eai8vijCxk530=;
	h=To:Subject:From:Date:From;
	b=k4SEI04uF07V0KA2v39uu97XzDdnoUjoZJghwOXFFoLUx7R9cDIlHR/pcmZ48SzaS
	 UF8z2E/VU15d3EpWD1OZ0rwx5dTnnHanX/+aMoOxeCmjOJaNiOz3rUcV1pXZ6Swa95
	 nAhC8LLhSVX/p2QPAOVNt9ICUcaYftnh4gSXLPhb6ffA59+CBUtPuJ9ivHVJ/N3llf
	 91lMKs9oFCQT3R2K3mxWUf6qYqkkAU/RPJPUI1MUWPc5u0QNAkU2WjYY7cJ9Xn0lwC
	 jA3apbPXm8zJk0tKExb1nHORgUEv6oyI1/5wlsMDRB32YEd6rUcwqFiZoYFCDhWRx7
	 Efm2C4tNZI9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3103DC7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 11:49:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168639774611.21662.15292086929436484259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac6046059a53c854ecef1b9c1c1100eb794922732730c8271f8598e88ae1289
Date: Sat, 10 Jun 2023 11:49:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686397746
