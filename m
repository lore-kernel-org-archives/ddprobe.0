Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080B37F751
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774149894; cv=none; b=SvJZUn6SKsfNSPUMUXj6P9Ftl5NkCLR0y+iVWc9TuKjKbjrl/WJMDTvIvyaZbzLpGr5x1+bLAH8Fa3kfXllrEDfX9PwVfgwkKAyDgXgbdIcx7BfkC2WJ6rm1XLYnDXqaXsptM9ojP0UlX8fgLUZpUUgobSSgYFzvvVPFxCzSIok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774149894; c=relaxed/simple;
	bh=QkjgbKtrnIg9H2KfLoFTx2eqRX7kdvAOn2BrwU39K5M=;
	h=To:Subject:From:Message-Id:Date; b=ofgg5FvS7kXcXEji+ckUfx//b2wO9aQTblIRyf+ZC33Dm6I49H+EFC0jootoScR3RIBXWVzVzukg/XZ2P6adrWhE3Iq4j072nzQC0+a2YqumdfZ/FCVnfLJnUH6BeYl3GhW1pzyeXeduV/2iHDjFU2r76XktoL0mXcEFzpNTrMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz47qV/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz47qV/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0703C2BC87
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774149893;
	bh=QkjgbKtrnIg9H2KfLoFTx2eqRX7kdvAOn2BrwU39K5M=;
	h=To:Subject:From:Date:From;
	b=Qz47qV/Kl6a3fbYnOmMX9quPIMtiIZHLkp0joB8crxMap4v7+bTE4Ux9V1Or4s/iA
	 scub5Lb7WCeKFy4zKDiiB+ahMWRH0DUJtKGRyoiW0wnmGuAnl8M6779awywLKjZag/
	 79T7grvxCgMJUiM0tDBOoHl5Waa9soeTJQlcKD3OMYYv1ItEAF66RFvWwYRc8BJYx8
	 rlmHCQOfY/hOaI771A5fIUk7DkL3edNFJXv84FHexM9MnMFHY6k/gKYXuuFDYmJtkQ
	 wRJC2K0fdx8nLQ80rpjPHtKtYsJpxsFrEnwMze/QewDRqY8OKsEqffCCW0b06q5hSO
	 P/dr00IsJ70JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE481094481
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414989357.10063.125959390180668597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcb5d5f6b69e33f3b46a441419a8d4cbd19261b82855cf487b1066eb90150b0
Date: Sun, 22 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774149893
