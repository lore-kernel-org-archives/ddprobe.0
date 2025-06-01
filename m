Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FAA239E82
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748815194; cv=none; b=cy0omvFX1iJJIeRVuTc/SE9X/zMhWGxu4cQr1FTlLJHprmvJy2+X/tJ/V7n4dCUmOvwcwuP1nmvvAYHCxeqbSdcXUe33kOwqxpsXQMvuO7wr2udsoJoHXgcCrYqO8e8xNTmrsj2AVlVuY+FYat1Wxy7DV/N3Rq2iT9FQUkT90Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748815194; c=relaxed/simple;
	bh=ppHlj3J6FuauyfMn2au5R2qFNAq0AMfNlSYEqe4SuaA=;
	h=To:Subject:From:Message-Id:Date; b=OwAJxk8TUcg3MvuhO07b9qXFX64wq+UODl5M8bm4qnfJKiqJDde4MJsSS43OXYBUGF/tZrtP4tiv2b4KveNXnU0EDG7c1B6Xbmn+z/Y7UJ5EDRI9jqhtJU6N3macJMHp8xzN+6hC7Usfdxi5w9MI8xRiqzRTv+Vwai3kDUElois=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edi1mwgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edi1mwgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1418C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748815193;
	bh=ppHlj3J6FuauyfMn2au5R2qFNAq0AMfNlSYEqe4SuaA=;
	h=To:Subject:From:Date:From;
	b=edi1mwgSMIWq0GLqEF6gtc7EsRcR3P99iuk11ylA88Avl7MgvVDhxPai8uMeXcnXh
	 keUkppxRBTRuyq4U5iVgL6nmUKVCqjIoE7clMccIQN9ht9IeHalRyrPU4bwlU8kW1n
	 ea9yqZzx0+EXKNx4vRo5pf2qQE1q9irHVsZRGsZ5pMuGg3lRTi3mNSTjrjiHKrjBof
	 CYNbD9ZCQi1RG4d3vCL22rmCazNfrzcUNtVjhz4lH+H9JppM+ZYo+c9nbVPz02qyKI
	 sUmVzgur3Npmnvi7tmJjNcmx3Juoas0HAXjXYmtMSNS+m1czBvRMHfvm1bN13N8y+7
	 Gjq+KLmnGJbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA2C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881519357.25286.6324050766194220627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5869ad8c7c16501eb835293a91917f785178c6fd67269c97b5fa5c73767cef9
Date: Sun, 01 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748815193
