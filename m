Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0225C396D0D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773667494; cv=none; b=l481n3eLoWXPdUz4cIqY4JVC+MN+PIzEoLjoww6r0TRpkILpZVGYVWiYPDR4Wbk5g5Ac8o/voxBrFPFsx64B1Xm71HTlOSQ73zujU7rqEkgXbj8vqVfc/Zp8wTGfXcrqnuaP+LNo8rewmUUNIcczWwCTmnkDfiCYMGsOWxh5J6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773667494; c=relaxed/simple;
	bh=TdSRvar1sPOt0SLXhIJ7YJiRkm8iZ1skVnowprdRSQo=;
	h=To:Subject:From:Message-Id:Date; b=IqtsJjvz3xlUipz7GbJ0klEJY5c6UZc+CItjvSU61I1uyIi33/Jnti8hhSLJrgL/i0Ao1/uoA1kkH/Aw7zxPR2vuPTuG/CeVf9cpxrjzdSDkku+TY/rcUTMcHyQm1HttAZmEijralFSyV7J+shA9AANH5MfH6HfQD++Rb8KId9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc3b4ZFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc3b4ZFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C7C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773667493;
	bh=TdSRvar1sPOt0SLXhIJ7YJiRkm8iZ1skVnowprdRSQo=;
	h=To:Subject:From:Date:From;
	b=Sc3b4ZFVzOukllvoDlfBzgNbjQHvncfJaYM712/JqChoYDEERpNpJcmb++yOTD/Fx
	 CPl6RWv3kaWolZY5t8mMDdCFt9tevQqFsQBhNMpLqhgtWKK8YtKh2zi8vFaYuGqgyU
	 aNnXVcjrn+CCOB3l2mtX0vTWaD/cYTi0S7Xl+Vl6Ig8ylGB16JtGAMygB3HSaZFaL6
	 0rPuqrGE9EfsByoUO+O++3k+RaYCu1acPE/Eg1OnZLDwX5ouxDUmrrvj4iWGmXjqzl
	 nMPzS2e0z+aOvwnWDuAlCzO7tGt13ce6WNMmvMw96vzgOcD1Ic5AP02oLg+D3iZR1+
	 LE3NmJRRTEEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E1BF506D0
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366749359.23732.7227740860231037745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb098d5f20eaa4be42e228ed2a87a608bffbc3601cec2e45651a4bd74c52add
Date: Mon, 16 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773667493
