Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7C3313E1C
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761681594; cv=none; b=miFd+t4nW6hoGLpRxEI53CRUU9DCzt8TDhil0ALUYvDGACnf8OcDFf93P0vpkRURhoRBWBn2f0ahy2Tt8o3TZ3ggG6ywzGVlzuUo1Gn0gBqTkxUy/NohZ4yW7+nayw4BvqXZK4W7C42WsEhQVpPP167iCa9hBUzZaGGGAsBFHow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761681594; c=relaxed/simple;
	bh=uUtgYIJYCJo+zWHhEhacvjxygJCinlbEbJSEv7KX2ps=;
	h=To:Subject:From:Message-Id:Date; b=Fw0khOqnX1VXvIPbQkAZ3tcb7fXa1MuPu2E/eMrIUkPf527SDAlm04J/OysmoBClHHx9B5GshXj/hVsfzdkW21Uf6n3neC1SMUG2tuLaCEc6YNTnFMKbJ2qn+9obgz1F1nLFPr0cmg1sKQRKX5Dsph4oD1lg/TJMcS098BUwFX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE5Ue4a3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE5Ue4a3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761681593;
	bh=uUtgYIJYCJo+zWHhEhacvjxygJCinlbEbJSEv7KX2ps=;
	h=To:Subject:From:Date:From;
	b=VE5Ue4a39Z748IGR+Z3AQlArpbiG42+Bu7HCMwUY6+PflVMyBRuRgtQ5htCmdfcX3
	 RuA3QXfY95ZvVHJgE0WNr/APaVxnmdWMeYDcKybid/GUQz4yBK7O4eBQQsYexRvOJi
	 YWq5QE5JkzYfhr0UpeNQunlslS8jdcblSnM1AedQM6TCGRj3LipX8MiKpB25ll5nno
	 MYqGlzbrYaN6GLOrm2OaWuAmUMBBa1HGAJnO2Uxh8TjIP70NSYH+Vr7LPhqcYlSw9b
	 4U72SOohHXmGkfblw7vsXZIThCoo4+2Pr52V+H8L/eO0j3QOhqyLETUlOKw9W6sO8Q
	 aKPZUBuPgtCVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90497CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168159358.19370.8933089377024698394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d87c3ee7e418393d44f7016ffebe42c6ea61d2506df3d8a045a49e18c67f7d
Date: Tue, 28 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761681593
