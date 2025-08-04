Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A27720127B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754274594; cv=none; b=FpaUmDBm1rDFcFqxBpp/V8M1gcAnQAVSN2LbFDf6zr/NU2iK1UX0+PVFxDRp5xyVS9SgoTMLqleNVLbjHNCGJ1mLxWvIwEkSQgLwRUISYCrwY83hIusEtDGb08uhiIg5Gevv/g+jp8FpEYnPUaYkSSRQ1R+Gsjh529uBddOp3Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754274594; c=relaxed/simple;
	bh=+qxxXbSc7Vt0rVCDajboRqL6Kp3YmkLaPq67aZYFHoQ=;
	h=To:Subject:From:Message-Id:Date; b=T48CasOFmLCOhJ/r8Mlam3zjvEg4eZPdHNFTuatTobAOzIIZ5FQ4fvPVniHRukhdqYAF8//co20ELcOUbIyG6zaT3p1TbPATllo3fyHWnYGaAtWQ8r1kkUlDsWrb2aVEAVkuw4cBXnPUFw2U/+vsAJrEgdqkKomdKdGioisSDd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+gyABjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+gyABjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754274593;
	bh=+qxxXbSc7Vt0rVCDajboRqL6Kp3YmkLaPq67aZYFHoQ=;
	h=To:Subject:From:Date:From;
	b=F+gyABjlOy/hOwTu2LbbExsOmuh2a4dqLZiofY7v4FiDLj7Jl8F83AxstXT7Zf5xh
	 8HOJS5LQK7gaQU+S8jb3PaZCzlb7hyzul3t3bLc6z34Y/HUilNt9x3rBLKyy+mpwKP
	 mRuDBecvT3hUqu+w0RvtUb5BYLEC5/juav7llsSMsJvIVa1UBcterP6aYiZ1jBqRoC
	 wlkCP6jMndbPsXjd6bzQ3uaX3NuUBgm33HHtqbG4aZUjWMs4GjD6I840ZAw9MauMGX
	 zn3tQbeUbjLN+HNBzfWdfXKZVOWWfJ9wibpOQzdo1NuyCkUBK+gipgUD8rf3DAPfR9
	 7Zt8Mix34S7+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95548C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427459358.11543.12688653305698450898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e033b11f02f7cb45094702deae1c94cd5921e31f75038495d79b3c5ef98e22
Date: Mon, 04 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754274593
