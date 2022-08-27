Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA1E15A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64F9FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661566252;
	bh=oqYiZi3uhXqSSBQPAkDqLBj1C2u3UW2qK5F4i0Xozlc=;
	h=To:Subject:From:Date:From;
	b=cfuey3UFe9z3m9wdjpnr3ycDgTpA7o9ghrWtnzL2m7JKoQkpHD/Eap1tRY+QUomkT
	 GesTurlIIRh/d3tc+XhtwV/KOWUwXOtAoK9MasNQJrIQEi4zhvybNLxo5xFzr2kxR/
	 ChG2XO9/7PlJKOk2fjpvPcVtsPVt6k1dBYJ0K9J1bN9+0pxr+G+qinA8bGrOcmYkaj
	 ZWCLcFpT9HYd11urV9YhOxCPdkbcdUTUpIpjvz3dklr21KY2yfstKaA467AmWHsd95
	 8oJqIVGJyYjC6q+2hQ+4fscHIx7D14V1uNF1A2DM0uYD70Gr2mxAsgAtttom7s2Z1Z
	 /g01pZz/QVG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE2EECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156625231.31627.9572632150434567097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205068e0a8edb468b4c25033d012c6f13276d1b39090219b1c08c0468c4642e0
Date: Sat, 27 Aug 2022 02:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661566252
