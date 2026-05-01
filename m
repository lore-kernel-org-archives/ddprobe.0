Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF534C124
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777615655; cv=none; b=YO/lzHY666ieViBNI+dpp5VPR8WdfjiewsE6bZDS3dTf3q6XWhNLeqr7DFkifVYfEuWbg1Mobj3RLvE8OwbM9JURMYCu/OKxt1uHANCQAJGepVRVy0Sqa2XTja/spCGl0lCsfzkD1EShDCMgdfZsYCEJtfQsSQ4JHoCv3UfJEUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777615655; c=relaxed/simple;
	bh=EfL45KaX3nIDbJCERKNRWTWKC/5D+ONK6ONzzZjzf/k=;
	h=To:Subject:From:Message-Id:Date; b=Ou2lnx64Na+xl4kEuA+2j5gbcI4EfrmmYM45LkJVYhHkpyhsn6AL9qBeD2NFFRm4OcL2XybNZsjlpPScESHeoRSyM2R04A7yYDFUZN4dXiDtZaNBmNe/ssiJb9OLQh5K3nQsAI4E6w+czTdrBX9PrYz+E/bDxXdziMRkQ1Cmbfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Onm73ixZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Onm73ixZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0FFC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777615654;
	bh=EfL45KaX3nIDbJCERKNRWTWKC/5D+ONK6ONzzZjzf/k=;
	h=To:Subject:From:Date:From;
	b=Onm73ixZQkU8J2RNHbWe/tZuGtw3YVlNyWVzNZMfjdHs8vSCPOJYqvWSvJ8AFUiK3
	 ULWVyZiSVsn/yUViNiv6/qhH0NcUrlKLUwbp9e+/XA+ENxDgMFE8lcph8swZ/mxEpp
	 QZUMuFWJ+xY6H3iHPpfg2+KZJJwME3GL6CqCX8TvQUTgXmbKbJCG2XCuB65RWB5hpq
	 lcZPi8HN+vukAPA2+tQHs0l4/KJrNyH5Z1WK6X2VRJOvtBaO3bN2vuwdXow33Xu9Xt
	 d8Foj3IIyyD6WoC8er85khQDUqi2wqSFTlok6ExgV617aesqFL9tF+a9IFcn3VpcKu
	 hD6ml3yjp4A6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F7EFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761565368.19976.3943655850657379815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7713c41c6f5f909b098d1f879188b00cbda19489bfdec89668175664ee44c7
Date: Fri, 01 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777615653
