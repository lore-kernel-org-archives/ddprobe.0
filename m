Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AC03750D5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776674854; cv=none; b=ecJUCUT/2F2JO2/PTo2gIQbL9MG4/SVPDi6u2LbuJe691rjfihOWs6BeuTuu4w0CUaQ8psLja1a1bB2l+hduppafCyEiBvsuR6iyeHkMm8MHzqBr0TtRg0VDJ07CJczoB8o8jubP3JkLaGgxbV4Iv9R+l0X8dLgVXv3eKYwrtwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776674854; c=relaxed/simple;
	bh=h+9OV3nkn61HoRh/zsTnvjIPII8Mu+Qb79KMxYRRefY=;
	h=To:Subject:From:Message-Id:Date; b=hGe5TxWCWqiy2/zHEvpPMuEJaGa3KBoNACYLo3G4wEAqlX81mgLS/PhJN8nW0Zk4lXNi5nj1oyiHCHX2r8tYXTlDaF5fnugo/oD5KTEKYaiSMCDVgcf6nqLFGF/Kaw6WiSq8mx5/C6CPQhyqpwjPDRplH4oclJ2NFozSH6woJ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5zynYEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5zynYEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF78C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776674853;
	bh=h+9OV3nkn61HoRh/zsTnvjIPII8Mu+Qb79KMxYRRefY=;
	h=To:Subject:From:Date:From;
	b=P5zynYEZ3oTkzZhWSpZRC3Ixi8BSQe8d2G8FXmlVd01XOnvJT7HiM+d4b0MeVHPQ7
	 QAowbxGwIpLD7WnDoSm9Rw5kGq1fBYCW0H3bP3zl0/+8mSlWgQauZ0M7npWqEfaUbm
	 yFD7JdNl/UnINfeKMaRm0Aap4+b5L1DDaluslp+lx4/MHFqGUFB0YM7JnO6ixx9qgN
	 /IOKYkDLsbzAupJ6P/nt+1u1Wt60a9Vv3af4QNIb2NmDErUSGLvLQZBrrZiL2Z+XEr
	 RxpD2ZEJ7kZmNVSAMcDP37qVM6YC7D5e2zA0irZsoLs0CPiBRJ2Ltu/KMyjiZ05mxy
	 aM+gDcFE/SdWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB6CF557EA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667485369.32600.60718635116430813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114d828afa734b963f733204ed6669df9c97b0c0a70b04fbb7f5442a73bc5404
Date: Mon, 20 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776674853
