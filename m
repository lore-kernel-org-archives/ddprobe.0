Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCFE2EA749
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766252634; cv=none; b=is87kFuACMNaULQo8s0NQdq6OxnmXWbAwKK5SEOdkULd3rJ2VdVaUth24MCEpuiYJ1FI8sbD6TOUqn5TVyMVY8qvMwj/Hde9VXU8/DPLyIW9hNR15SFXled88/gBV0GjPMpQJSAKV9CtNMBQyGXfaBDR/gWzzw3O3vlmso39A3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766252634; c=relaxed/simple;
	bh=wsrIDhiPAHK47PBvLF0fTv4+JIA6pXaT1f4rl/TlWwI=;
	h=To:Subject:From:Message-Id:Date; b=TLgRKvru4o82AUKpHrgv1QAXqNR1IHe81P/7EPXtN8/HuRhv+za6T2ex3qk0qCPAp4zALCdIYdAwpAqhkpRQ/9v0X++qa8unc8dHiiIYm2klNIsopnf2HO36i6skXdBIsEiMq/1Abr+Z/euxr/c8e2K5TxkOOFJx1A4YNAao5XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7ic/ohH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7ic/ohH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766252633;
	bh=wsrIDhiPAHK47PBvLF0fTv4+JIA6pXaT1f4rl/TlWwI=;
	h=To:Subject:From:Date:From;
	b=V7ic/ohHGndYxgn0muDNmpJScaphMOK7MzEazmX1PptCsm4+NMsUG6dEXih56ovNx
	 yD4jJJ1SptZ3qDr9EtGBHikKmKjaZOlHbkaLodM6zFAnuSO4ryge8tEbcjhquwrQtQ
	 lc09Z3O2FxYGXPlyx0L4B1/VtjV7P73Ur9OuqH4WlocLEIOYZHM4zrkLtpbku1ptke
	 dQBecpXEMXTd5AWnEP9egKuzMnI7btO0Yth31OMhzc9AGbaChAJYG/qFWuEmFaWQBW
	 q7iszbZt7G+S177i/QpCJIcYoJW6HYww1VE9IyP4ynDU4HhvWPLXnbDZNm+O1i6ZQH
	 6i1+w6qoqGUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B3E668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625263357.7368.7458911997911773332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62978ced872d21aa2724c2ac168449c58345dac63f3824b0e5eebad3819ad3ff
Date: Sat, 20 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766252633
