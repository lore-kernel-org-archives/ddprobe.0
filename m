Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC42264A7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775597734; cv=none; b=iHdtv1AfaIA4HGrsYZ5PcKuE0zN04ZYXszc1P/vE6zqrKri48phZI/uOtKxudPYKLuA9Uk/83ch4+UIw8E57hFQ01OzYB4mGw99UqVGz6HEIbKTPfkGIfFZyJof8+JB7g55z2oTXFdZl4t8aQiSO/HayMvO4jo7x60pu9JvRaOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775597734; c=relaxed/simple;
	bh=tYZGNYP+M5yqHGirBi1R+PHZAVqeL+FHLBsFoZeQ5Ug=;
	h=To:Subject:From:Message-Id:Date; b=XET9aDL9mkPRtt+1C0XbJSKJHwZ7G5x6t4+wGv2eyHo7pBAPZEVcCaN8TnAPEv6FX2ieezQ3ZOwnD9gUCu/VL+4EdAWUGvpN/Re60gnSukCQYX50Xj16jgFO05eLJrwCF8WbMpzv0majYZcxazmRyWpCyDnAsNBhMoWkg/SXRG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8gCd0VT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8gCd0VT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AC4C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775597733;
	bh=tYZGNYP+M5yqHGirBi1R+PHZAVqeL+FHLBsFoZeQ5Ug=;
	h=To:Subject:From:Date:From;
	b=L8gCd0VToqVCNWteoBTZRbU4y+9BjBktxSjNcWhszP2Mwc56Ww+WNBiuBjOUaIMSa
	 2ek3n5EYNdFq/tUVkaysGjHHynMFFu0RQeb1191eMVTT0yt4eeFs/11rFQVAOyqhNN
	 T0U4yxigOobBS4J/nIzpkxk3i1WN2JXKdDKC12yyT2aYHyF09MkdhlSzJ1UCUNSTfM
	 TBb4UXjqZF/RBClU6QF3Z3MFAbVyH/LY+tXWIcjDpuRh0AmjLlfG5y8EzcsJURkwaQ
	 3gq3hLENuzCoLFmJWzo10gk+nt5JaiMnD4laOfcTjIOKY40+re6Gmyy4Pb4LZIa8zl
	 Quw812/4krcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E28FEEF55
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559773368.12177.17904463170945673407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164b856744e47d92bcae15582c273dacfa2fca09c58ee5a47c5a58565feef123
Date: Tue, 07 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775597733
