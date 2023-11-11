Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A4C13AF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u08JhLAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A62C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699702696;
	bh=rLWOb5fg+4UwEutm0jpdATjUo/N+BNQY7IHWrEaqXlw=;
	h=To:Subject:From:Date:From;
	b=u08JhLARmurIdJAZKZXCOvPl3HdU0Ta6OIPq0tr4YvXboTeIDtSShnWhAXvvVEafy
	 LIJ0s6wAhEblMUnswB5bFlLDZpTV3472XCryMIoSueG9XJqz6nqGOPR1HD8+YF1bgF
	 b9WMLxSQ58SJ/Ai2P1b6IZdJr5Y2k1nqf7hGiFnWgjBbSby/WJvDV7W0WWcwpCGYAd
	 YE4Ny3VFAU2g/d2SPN2w8vdEjGoEGHAbQmsFqm+2jNmLm4vxebqmEEAMHNu3p3Ip+m
	 OvBhFz3npB4HrLCKTMM7UnyOpe8BBcHvRpk5TkfZg8i+GbWpYhSI+5NHjIb9/xJeSK
	 nAuW22tasVp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62644C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970269639.11383.12605246570814636950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0afdeba908616c8f30093271665689f6d222f5067a8808c79c2c7c86c8f011
Date: Sat, 11 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699702696
