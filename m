Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62854363
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 04:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE274C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 04:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684557546;
	bh=oXKJ9C4Bcx8mZ0bHiizHIraIcQlUNAEMK41P3ZoM4Ck=;
	h=To:Subject:From:Date:From;
	b=jrapPquwaOvzo4kYXyTMF8Fk6TK2ZPCE9T2+nqVhMVXi8m7V14DgeONfc1w1uYK16
	 bDHuBpxd2M75c/Bln2uylUunbzKYOgE0RGGL2B0YYlA2FO3o2//VE9BIC089kyOCsV
	 7BQr2p1fCIDZ4YjJhXwWybwWfGvEPHW3KvHprZdxCxcIwVYp8AFOBtYXqCBHSGjwzu
	 43pexUfzQ3SFsFCgSEE0s4jTdmcaEPtTmffVmv13G1iCRk96DcGx5Mwdo1u6P/yCZB
	 qIlTPfQq7OGZNMYhJN3R9jSjFy/Lx6QFV4cUXhtUeP/io2Kg2U3TXvL74gaxBtH6GI
	 vDWZ9MFWOY4Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1F8C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 04:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168455754576.15688.14212888974312841097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8b19241a5e4cad5abc14d7a5d30378570981ae754e3dfb8b5aa50be535776f
Date: Sat, 20 May 2023 04:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684557545
