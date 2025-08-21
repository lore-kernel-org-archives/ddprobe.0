Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E172DE70D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755794994; cv=none; b=O5mrJL7G1Xpm0Jp9DVsYq+AXnXUPDw0+MNl3R9mGIELvihbZgunBAQgomF8d3leuLPWm/cXOpp5m2H3TtNZz/g3DK5CCM5RwmTiL3dzgtvrSu8GVjpTJY8YGgvaZRFnPH3MUvh3HrDkrauyHnDpefOauVJ74fQlHUucIfRAGEgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755794994; c=relaxed/simple;
	bh=Pl6QQbycsTJMcTy/ER3f7dZhl9k5CwyAar2qEzqQ6Mg=;
	h=To:Subject:From:Message-Id:Date; b=fyyWvVwJ+Fb2l3n92m/vS1r16rvQCDtxNsqSWwLPIPFxRPjfY7Efo8SVV/kw+yymjO/nyfAbUUJAmxxxq1VgOJjdb/PXnBf/b6XEZg7huyvBi9nDdeUTjpGjmiun3FDSQ/Oj0HmY9aTE3mSAzeCQHJuweQJdWafuik4ulBBy4/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZq/wNj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZq/wNj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F303C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755794993;
	bh=Pl6QQbycsTJMcTy/ER3f7dZhl9k5CwyAar2qEzqQ6Mg=;
	h=To:Subject:From:Date:From;
	b=RZq/wNj0FAM3k6e+8D4tCNAnNuSJeQswQ3w/kqajkCJ+8uN0kxXVSVyLElbyfmi1n
	 w3AIZxZPOHLbyPUhXUC/ICLfjxE5nZUeFVZx/8w/TZrVpc+NquH4zzwUiG2VQOCIjo
	 g78e3bd1mA7QKi09DNBDrZ14i1AreCNkZud5Qcq3C6sdpFhh8We3ZNXPg8VBPDMWgh
	 /BU8VQJPCn4mpaVaKFQwSJECbTOXcnOdTCqZC3GTCIBsVV3zcfdoDHz/iiZIgWp9Qn
	 B1CL2HSenggV3H5e2jwDHwNe66t2jOyGLRvO8hZ1BOxjOKtq4sfMFrRftnM0jGx30y
	 rqdfZ6eMHi3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F478CA0EFC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579499357.1380.11306273091972864145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2fb67300230af5bd791271dadfc25be349828b7458f9c8a704dd76f7a3b2696
Date: Thu, 21 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755794993
