Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9BD7ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C2FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665825653;
	bh=zhdR0Cg6DFLfv+rsdwSSEr4r32V/OM1BOmJ4V+Gbz7I=;
	h=To:Subject:From:Date:From;
	b=NJc4aqWmewAMBtW6Ch8julzOJdKU3kQve8Fo9tKySpr7d1Z/Ja6qDVLK8yzB/D3Vi
	 ldeyoJqioBNURLhCuaoD+LRp5SflgMjGGuaHG6zbxmC9G+IWEYh00NraxFHq3kvVKt
	 VzNVfmYi9DcN3VQ+VnaWp8KbhpwBGhKkW9wM747+2TOMv9pX/gJJMWWp0cyY1VPXiI
	 JFF/B1v0AOXzt8fiKoKsLyFa7riAxYde0Nci/CbgFljtLlqyZtBk0hW43DF+iOpjYn
	 3pm9XARR4+5vvUQfv/Du0n3B+ziMM/Ni1z/801ZDYZ5O2nZSFJOu4t7bGD2FAknuf0
	 AeZx03xi0Ni1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587E1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582565335.4610.12846711393244639971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2530a58915b060d801223de7fb2566b23b9afdcda824ffc69d3f12f165cf8301
Date: Sat, 15 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665825653
