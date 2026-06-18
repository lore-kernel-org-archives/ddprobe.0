Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4CF3B9930
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781781994; cv=none; b=Kz1nQEmJPEJXA4pWXBEV4Br9XazNxaaUahQnVSjVDNx5xZjplTjmGGRblb2gj9OI64OPSmq2ATMtADxm6UaM6rylyrmHAJuxAnSC+HUh9p2ZxDfW/Ln+yvbYItIs526NmTrJV3L4DXEuDhiq4ftintWK3aL3Et41Ctb81wLvikA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781781994; c=relaxed/simple;
	bh=XaSV3SdtTRwcwyP8bm7u3b0NMZuCAIk1UVt7dwFYRRY=;
	h=To:Subject:From:Message-Id:Date; b=FFocu+YWfF0AJfNdp2GTPDFhFYw66Jc+CznrCijnzR8wXPEoYzaPMDz7hE7dwxiypHPIZzqyfb7lSBVX38YeJrielsaNpH+oX+JbNMJ91eZAqkYckso30oPZV/Nfm17jl0/6r7U/8+DvbmjLs1NeWMeorQfdahMyigzbCCc7/o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2nuNx6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2nuNx6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE8FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781781993;
	bh=XaSV3SdtTRwcwyP8bm7u3b0NMZuCAIk1UVt7dwFYRRY=;
	h=To:Subject:From:Date:From;
	b=R2nuNx6WY1Zv+R5Z+67I6VyZzoq1YmbTLBB+ZQoe6xs6WK0gRvwkzQpfo9WOdnwzb
	 ifvbu2iF2Jz/JJzZ711rZ9YrAD2BmX8w+bCzfjLjqSXHflsG+FwgANv3hbDauG8ZVT
	 4+DP8B2oBbpxYSTIrHU8UsyQORsXfPGPyiqcJOUjZ6uBmsLKyrXmfRXYqJvMIVzT5j
	 bmJp/5krRh3lS2pZKuebrnL3tPioCq3Fp2oXwO7InYgD7V7YVenIfvUoR48kat48/G
	 aXTICCvGb9UY6tJ5d3aMbckZ10ziUCKSDxNXPxZgBqA+Z1NZO/KG1LqEXuui4vlhgq
	 CPrvHpowkgCjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98DCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178199368.15546.6890307619833563352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cac49ba8f00e36097d623154616a3198f7cd204db94f6f745ce8b976780e94
Date: Thu, 18 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781781993
