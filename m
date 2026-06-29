Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328FD40D568
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782698914; cv=none; b=KIWFzaxPiRxKW1uQd+nUy9F82FGboy7bfZsDn6hQcUo8mYCkpf+LJ8dKGxvY/vCUuriBD1Z4+CnjBR8Exng3Yoq7MO894cCgePHGPeliXLR34fhNIlOWdQX1BDhHmJXXxaepf+xVIi14mux02r4SMgQGXVn8InAa6b0Bm6JSKD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782698914; c=relaxed/simple;
	bh=KcHRe8q0WAy1YRq2tHsRyxjb9V/i904VScmJ3YgjoRI=;
	h=To:Subject:From:Message-Id:Date; b=YMG5Xz3i/4OMSEu1b7Td+Of/p2iGfAjGKw5L3osX+IPkHgmyqNSbxcuEIdnK3iUqmGtVCbYErXD/Zb1MJSLQDv8zfQDmf5oaTXX6xiqxIyTBQeIId+A3/AWB60pCyraO3DduTInIKVGBL6yCwmrTealESwHDkC9eCWO0a3LlZH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i43r+qYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i43r+qYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB52C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782698913;
	bh=KcHRe8q0WAy1YRq2tHsRyxjb9V/i904VScmJ3YgjoRI=;
	h=To:Subject:From:Date:From;
	b=i43r+qYEFyyGOuZcLneeMXUIkhxNszn/wc6J8bO2QTIdltUX/Mv0VGAxKSyYz5MBR
	 tUXKcJ8yrSet/qlOQ7Wmp79nCgSBVwGt1/JaCTTNwk/HmYEuwQwKe3xaGn3bZ//okU
	 Afi+m2KtyFECkP5JdD59VNCBZjjoJh3twnjM5Ffl6EtVMGULB0Ga5HbD7zcSlAAsuH
	 odW7noSBfc7vDmZphILgk8cC7QPNDg04IaNYi2X7Ey/pQAPsXvODsZQxa0hQNETvkB
	 bsFLHEJsLM4zIbjEtSIcy6hzmnsHcVbg8VUEQeYUovDGWhVFPwHnadyGhbT6XpFfVW
	 3Rjc7fYq2Wbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89EFC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269891368.23648.15364210749161975882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee3c57adc4754106ffee6c4519e2db4298fddbbad5954d90e6df1e04c5801ea
Date: Mon, 29 Jun 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782698913
