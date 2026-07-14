Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4944A43E9D8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784031514; cv=none; b=TPxDCkGTZiu4k4enPshNOu6WbylSdcFYLUaWRGx5hL1TpnvEG5pQ41elkrqu7A4NHlwVZ/Fgcn9vyydxqF3nIwlRBHCdNFsZPEHOESeSPdpRm/aZZtRLbvln0RdIqJrk2hKzEtGWnVKdGutOe7zvITnGOoY05VVGdiWAgmuSvCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784031514; c=relaxed/simple;
	bh=WwPv7pTw6YXJJhI/Dh3T39edHuE8lB+E31NRmUICQ8M=;
	h=To:Subject:From:Message-Id:Date; b=g7T9iaHCbF0lwXuD+L3rq8m4IPopl0ng8YRIJlwTrNEKkZpCKEfOfqXXOL4tRoxlYpErrmy5dbiUSEIl75y7PFrB3/FM6PyNevUlaALvKmUfarImTToCZHWX8ck3Y0Rq8AAg5hmDUkSzjKUa3wEk8exxtlaSH7yYMOt+fMbxX1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc3FI81M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc3FI81M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8EDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784031513;
	bh=WwPv7pTw6YXJJhI/Dh3T39edHuE8lB+E31NRmUICQ8M=;
	h=To:Subject:From:Date:From;
	b=Jc3FI81MZ6E0pDj52vPqlNXe/xk/HvMMT79tiUd7s/J5pllRiSm/Rsn2+Wa49+UYx
	 Qd1ZWQNtYSsoWhrU/othS5JDyRKfkwm+XluodAmD3eKgDCejLuITz1VAe5MhtC6M3G
	 SZeTMDsyF5icWjojWKFlgIKsZCC6aKq4ku0wu17J7FuJ9UP09dCzFyyCW3o0qd/NdB
	 wPuxF76aCyZIIHFnHbA92wxiaX8AWNwxf2TIcKUUz9URgCKDOn89yE+2YN3MXKmJkJ
	 jsK7QA8Q6Uc7t3+AYQdNtjfl0SyNtte24RhMVwrh2uiip37vPaQ30dNiE6ba8tMBiJ
	 Uv18l3ivVkoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D0C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403151368.7360.6955510536790545572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a83bf95be38802095f40e44a1cd712f1247676d273bdb9978f4279109a0288
Date: Tue, 14 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784031513
