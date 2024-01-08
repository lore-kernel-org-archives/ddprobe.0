Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1B7B651
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGLDtYg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B881C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704700096;
	bh=CBFsyENn8n5OlRrMNfyMVI961it/KmEoPeHmIuqVhmA=;
	h=To:Subject:From:Date:From;
	b=vGLDtYg11KquOa1rgSzxNv6e+en+SM+c7CSoRm/sOm7vFmnfOsFaLt9LSgIijze4G
	 o4Nb6XVkMgZcZOovJnPb3VtRh2F8Lg18x0e8yKCb4XNjCaDJ426M3d4kct7xGUOoEp
	 vOZZePMDErWyVFiVQEbTMhBVm2nBZ1UOnDfghK2NEO/H7eyJOLT5OQ1gfOfNwlLR2d
	 h6o6pDuASVeI3/1iJxgdn75aQzQocVFWK9+RrMXFf8fVIRl44NIMgiAP7mCW2xRA47
	 i9wfz/QoaoPuWHDg/wtvZCl0N8TB7TZz0+Ah6oA/zm1x2YEewWr4SkzB1kBReqfHeN
	 MN9Hv0k88m1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E49CC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170470009643.17924.4251886726055862554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2b2bcc9915296aae5b9e44e6ee3b53ef829e7a9e8ce37974295a2b332d0b2d
Date: Mon, 08 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704700096
