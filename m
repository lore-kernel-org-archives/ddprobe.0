Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5253D6FC5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786794034; cv=none; b=sV1algC2bTcxtxkh9q2jD1PFng/qweyHFpsdgorQ4QARCYI9azrfVomMRwyxjebOaXpfVOKGrWY+Hsaj43dDE9p2Ng8ot94TadvNY/R8lZpFTvnjzaqQ9bHxHd5pygbWIhdETo8uaRaWaXEwRLhAjQm8xwchyy8TjwUU3r/HK98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786794034; c=relaxed/simple;
	bh=VaL12nAOsKnuWz1+GxrWFEGE6XgImsle4M+UsGPq5NM=;
	h=To:Subject:From:Message-Id:Date; b=SjUcbzj3BOakTLiAzVz8YueMIbp22Dw6vjQ3T7QNCL1Ft/2WONHMSfM3IgPo0jdJFaB95/L6WoMg2q4GdEYxaJ6x/ZVo3vrTZZnW/Kl96fIPyb+mBF8OlINt7AfYPJ59NUXAAdyaZ6brjzbHH4HLb+I0UPzkbk8DkJpDqSXWoVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8jVhXRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8jVhXRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64D4C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786794033;
	bh=VaL12nAOsKnuWz1+GxrWFEGE6XgImsle4M+UsGPq5NM=;
	h=To:Subject:From:Date:From;
	b=S8jVhXRlSOnLnFfE8YxalZQoxeHwb+BFRHlOJADkSXEjPfhgbfxfbeCeRK2Pr/cGX
	 0XMStlpXtynY7Av0u5xmFftgvMm9q2w0FK6a6z4iNUIJ2cmHj4OKbMPdDkQsFQ6kaP
	 gYj5F0ybeWculj4WOw6EQpkAbOV/8Za8tLQt9OdG+mme7Y/ftmAsg5KGDZw1wLMvTq
	 d8flUc6ySHv0xB8m3vTL85gJqbkiE0Oa4HWT3OU7VUBQWZ+FqDkn3hCnKVA/8riEpE
	 EKDpRej3NVIJ/rJx35fuMB6b8boApWL1Rm98pul6lN5hO8nDEJVTC5RdEw75ihEfTO
	 DJf79N57J+T4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20D1C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679403369.22785.747108194583370306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b761bc7067235b7cacf2a326b62596cfda667fbf3053dd7a23072e4bc404f256
Date: Sat, 15 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786794033
