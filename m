Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281815667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA816C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672678887;
	bh=unwY7yuPQajF3pNPJ/M1SWEAUBYLMydhHn+p56z/LoA=;
	h=To:Subject:From:Date:From;
	b=cJTnnumtBNqyH8lOBQsOfu5/u8RvGq9zLrlzwVjD3rm2da7sxHFMhmigbIiNiaFyw
	 IUcDC6gXO//p/vddUzCN2Auyi6utWWibhj4zfOhoaN49TJix/tzODLhnVG8K9/UZDO
	 eUkKE9Doc1i4V8qVg7jANGU23xcYVZQeSu/uEnz1Trc2WgIKKQqEEsAU62Cd2V1g6X
	 wqHAWZ9N52nwSGf7QHZWHNV1vUgrs3mWZN66NPSvxD5CBLU67IDhAz3OD/Km+CdDaf
	 Gl4KpcZD+vMGdZas5x5+b3QVSaUyH/IvMjRead7p2JwyqSAV929yYRCTcYth+6bD4w
	 Nq0UvReZTxyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F3C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267888758.27959.15359841532400711593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf2a2448f6e3c96f06b091e1ffbc5430ea6fc7abfa7bf56fcb00e58194a4c9d
Date: Mon, 02 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672678887
