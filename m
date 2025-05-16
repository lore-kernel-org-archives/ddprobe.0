Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C82F282F1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747422594; cv=none; b=cUWuzAK+1UOusrLFZjYpuFFeHK1DGdBfGAXCDiHPDTd+j9mkYoybEkopROqLg8glsxVP2ky97RkiQcmHJuNOZlkmdyjTjIgfxQPp+/28SXXs8zEymdRIoTbU/9DboxRW3BjWYdlgs8cFrYNJfQgyGGI3oIUDOIR1FpP65zCFQSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747422594; c=relaxed/simple;
	bh=YcacN5mtyOZDUwhbCr0zOGUmwrfl+caTIyoZ8okYud4=;
	h=To:Subject:From:Message-Id:Date; b=bmwsjgXET8GeOQgIVCx2XJOTgIldQW0kcfxBZ9hZKrXPoXEanxIfFkItbULxUd3JVKB0hJ85JkvkaXyddT/5rETXk64h7ZOsZsagNxPwnweR3a+7V4EGSsrsQXw40EfjmLT3Un6byAtiCtSM7afvb4kVxZTZqo7Pox6WwWAqKqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdCiSEYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdCiSEYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747422593;
	bh=YcacN5mtyOZDUwhbCr0zOGUmwrfl+caTIyoZ8okYud4=;
	h=To:Subject:From:Date:From;
	b=HdCiSEYmHbmRft7dsMcP4sNIFovwuYj9zMNb8p/Pi4PPQ7LNW53s2sqvl9q6eTEKx
	 xbsAthZ0XsBLgoR+VCY/KYbe6hTwD4GIxrAtY8vRwRpd484zP3GqT89BSXiX4ZmUFI
	 CtWj6JkIyin+NqqFdzTuhJDS/Cxe1VvxfBF10ZmxcBcNP8w5Y+tpQqJRAsNZ0ZPzO8
	 k3DFwbFAcmWlkE9526nQScoRonVXocfwYpZfhJ66TvIJ3Lj7ML/kG+qoL1rbsScigF
	 yI9LR8MTMTkzVymtSWCUvh+VvL2sDkq8u/yz3cQPB8Q432FmSze2fVikqv5I7QFYvH
	 mm5KWfZe2VmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA4C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742259357.10671.13663674793029904348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6526397559908ff3b4e1ef8737ba50a4110070bba0f866133864a15b20132cd
Date: Fri, 16 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747422593
