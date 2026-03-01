Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8DB28640B
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772367894; cv=none; b=KFL5YCNVGfSkprvGD1lzrWo1qYKwPrtg6IbxGcUXc6bvjUf2aTs3UYcggHCkJa1JLwfWv4uMqmlnfkQJ1d5PtdA7YKxer1jKoLOTEEl/96CutfahU6VSC7HbmAc7n6r1IoeiMFqoC2xGVDMRJcYBZ0tUxU1fdudInhiDNgkSP7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772367894; c=relaxed/simple;
	bh=Nvzt3ma+PI38EWh205Ep8WsPjml/R1VULQrHfTuhCpA=;
	h=To:Subject:From:Message-Id:Date; b=SD25XJ2jp0dyNAf/9Jc4h972sPE4rUVSICPwIbXy0WGJO0oG4jbuO+6qjtNtyAUBL4LquCaV/G0oY/j9sCelfaRVuC/PMOKHNXjJY1qgsnpjXiNfeyu8sHq2Yyd2oAGuk2iMBPZHM081ToQEU52dnKPbIZFBLpx2z6QSJ21rEPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLzgNr+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLzgNr+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772367893;
	bh=Nvzt3ma+PI38EWh205Ep8WsPjml/R1VULQrHfTuhCpA=;
	h=To:Subject:From:Date:From;
	b=YLzgNr+D5sc2lG9UUZW/MiqNkO55/WLtD6VFEzrPsCBjPaPEtgWKoIklPRIsc3NRX
	 7Wj71SvApZGcWwmYzOFW6gocRV5N/Xk2dEBqwv4mDNmpzqWP/3RhHCrIjS/WwMOqBe
	 ouH2IoBJE/v5YCAox5IXkYbaln3Kwe8s0SdtCBCZGCo7QooLp79g4zZ3lxHRBckVlu
	 c2Zl3nwiq4TKcsLyK4y93zNkJV3HnFgul6P3a8jdj6SWMhWOGG45967m4TqUiX8MwN
	 yYdxJcNlv7s9x8Bif225Wb6qvC9WLHjzbOzkZujSykNRsROIyZDTlVqxXFlZ4BtYzb
	 u4AK/LPsCTi7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D3FD005C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236789359.19670.6234073086050411292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20b6a47186c895d59decbfe4f63e4ea029bc2213f3f7410342016067773827b
Date: Sun, 01 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772367893
