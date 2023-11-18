Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267DADDAC
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmUcB0b6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81886C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700287096;
	bh=OMw6kiDuEyIZhOGIZY4qWDSFFxQwYquezGjR1DXD5So=;
	h=To:Subject:From:Date:From;
	b=lmUcB0b6KBtiRj6Cb4mdu/A2ffoOVF7tK3DlHyWAmmaYFmEcmb9CWKHDnGMcgcQ7W
	 ig5QteJr11+HHzBiiRkGxl2vvXcPiXkHF4xNI7rsrtkUtx61qU712b1Wa13VKBVf0c
	 XIMFVfLxcf1rb0Vcws+ih1lc/qkzzXeh/5WoCC3o5MGfxYloR4/KPIVGYhvuaotfY2
	 NMUJABlLs5CBJfkhVQzYpndANhcCBi1EQ3avHWEzxEhm7MKNX0JrELWlaPzC3if+cS
	 nvT+KOc/FNJDT04mHWiUwD+O32kfP+L+Ju+CkwnniVUWsEFSOPcI1ZWT1Gex7Up2wg
	 Aq5ereZpG7WUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65537C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170028709637.1173.7736809167407335031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f313ed05a46ee86f9f02633f96e8b940afe79aff9bc7332456f8cfc37c270cc
Date: Sat, 18 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700287096
