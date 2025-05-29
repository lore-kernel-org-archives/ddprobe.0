Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46841DB924
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748545193; cv=none; b=C0i0NBXcvPfe8FKj8RN5K0pafk2DFJOZno+Wa4Co1KLwxPFJgm5XsRzc/b9jpIbLi3+Pqbi0g6Z8NUah2FfEzJ2eOWDxGE5LNTLOQyNWJNLECpOBJi+5BEjD60KOXYmTHbhFhnuBrSvTuGbxrPES8yEDBmlZvBNbp2nLkTJihas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748545193; c=relaxed/simple;
	bh=L3fZ8lg4ePuGIfs4Z8C+3vgJW93iGOK3r5Pr6FWKsGk=;
	h=To:Subject:From:Message-Id:Date; b=T7FeRTYiSRAx8Qn3YUXfNKEAfgLt002c0VITCtnTVu95+a896NgiHLcwtB0JguB803wMGefOSIP0yW64VmuJAZI+P2Qj/f3W+Uu3bXnv/y0fLjXtlcoojaeVtxDQUsLpf6/T06JEtuaAM3zL9D6/orre5z8u5Brd1nhLnGhRsS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvlIf/Lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvlIf/Lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A045CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748545193;
	bh=L3fZ8lg4ePuGIfs4Z8C+3vgJW93iGOK3r5Pr6FWKsGk=;
	h=To:Subject:From:Date:From;
	b=FvlIf/Ltc8dIfgoONOpm/0sO0VEpDlTfy3KX5h5LSLVIUu+sJ71OXgSD1SYz+5Gbb
	 /dGuldKy4aRUwFbx9wwOHczFcHC9iV08vNx8JD+vvIi9RueNyzk6/WdgLFnjKWXTAC
	 S5WC1JfSHdcIzVffC3afbtzQs9HS9vMjoFM79yGe1y4vs3y+girwguSZdjXlXEFkhB
	 bspSYfYkm9U0+QeSGmRqtEupgWkd1MDZnWlJ9aUfso9JniuDxDmysqBs1/ZcCCFKYZ
	 r8exqkwKO5RszZ1J2EIrFpM232i0+DwYBwEF1+OfQgmKCvQTSqZAWHy9QY+3QX9dyL
	 mEnbQw3x25eUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F059C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854519357.12801.417776712134191735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993d48009999a9a159e41819e17dc687d14ccfe9c45de03aca7e502293815386
Date: Thu, 29 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748545193
