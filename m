Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDC47C
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCA7C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675550165;
	bh=2n3mA2T/ZOny7nPPcWCInNpUwaK4g6qSn/X6nDjBvcU=;
	h=To:Subject:From:Date:From;
	b=ogTaSNrkGiBUYM+dhFTUeA/Sy45OhlpLCO1n3k2dVZovN3QmGKfKAGkZH6ogLNRCU
	 jXOQhwlZoITzlJ2pDf4M30eI8ypl2oHri1RsrQtZ9SeXtkGjAwTePClsNyD2Eavrdt
	 Q2192n/ae1buFjiQmpknAPORd+pAl9J7vr1OMJvMhZYMpLGsckoVN+dfLTs6NWDwxC
	 bdDL+V+UeKJleie+hGJ4a8Imq/ya7gOdGc9iT2UImRK2QpKraUKuA86P0sLZEoOJ1h
	 ya57HyZ6OF8Kf3Xzpb9B480YjoexfzsiPuHc9faw0rswRgbv5mzMND7+LbnwdkHYuA
	 u/PaKGkOy01rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF486C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167555016576.5270.16669979705771296321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c957cf78b54402491a671c2cb2dacf9829e75590a9c4b5c78dbb2e4d60de3f
Date: Sat, 04 Feb 2023 22:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675550165
