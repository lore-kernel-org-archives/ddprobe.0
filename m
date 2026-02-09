Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A63E23ABA9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770612234; cv=none; b=jQ98cRjL1VV1I9km8VTIUcUqJv8A+HJhV/DoD1owXgYMnS8ikCUZ9GDv7/EoKw05krRmASBPRNCoS82XANlyDI7WWop1kqFLOweMxRL4h67g8ceNXxFHXs3HSsBNKigKeK1r8FvMBKRe7QSCOpFwrlDQeTTYwtpclr5RS8xkJzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770612234; c=relaxed/simple;
	bh=/fEzEeJiwTwU5idBKy3XTjyUHoR16Ob5hpDJdkZ/ZOw=;
	h=To:Subject:From:Message-Id:Date; b=IyNk9ob0mySJvWkPb5/Z7yBr2pc4U4OkAcEmoPIOdbfpePhEUEQV3arH4/Nfdz/tIzZe364imMVrGhq2Zp7XOUforJqhT7Nl9Os00YQcEa4ADO+J6cy742hRBPhB+qNlWbXaqrxNwzn++z/HDwtg+OD3LZqNOPDwCqR8aEB9lGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5XbwDKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5XbwDKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770612233;
	bh=/fEzEeJiwTwU5idBKy3XTjyUHoR16Ob5hpDJdkZ/ZOw=;
	h=To:Subject:From:Date:From;
	b=Q5XbwDKaWz4guEi5STlTBCvdaeVi4WuhLUv9EtGyrQxCGlLDabDvpDguZUCU+KleN
	 BmgzVGUYt6hoIIi+Bvpxo1YcYgw5qEbt4O8ami+6/IlMpaMLtva9p/zbK5FYUICVx8
	 P8R2jruQ/tFEzpJQlvIkVGWV84+jdfj+IAIGvb7bZ7z39FklCPh3IXSqSM0wz9tgtA
	 xQsE9bmFL8N1Dg8Bqqw1dxOo7y6DKQ2DUdqpm3MFUWEe0d3trzXp69Z5DcgAkmF+o5
	 Vw2g5WiCuE9NJLN5c3vt59era+XEJUDIjiupf5Voir6JnDwnfHM+VIvOLJu9k+lL5c
	 xJt+3X7eg9EcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90821EF06E5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061223358.21881.8804126922526164846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6189b5028cc069cf941be21f9f5c61ac9b3883d94b0d312f493722a2482673
Date: Mon, 09 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770612233
