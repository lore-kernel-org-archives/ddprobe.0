Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42068846B
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 21:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D871DC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 21:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683409685;
	bh=TYHxbniJgwrbG+UcfXmQo9Krx7AKH7dRnbSaau5TvsM=;
	h=To:Subject:From:Date:From;
	b=Y+GVVgV3T/QiPrSW4fovMgox4LlCGLqZA/jAQ2W0zw6Es0sISPYXbykN+wbBvcPIe
	 s0pe6E1mzZULjM4nHPK/ukJjqSzmNgb2BCimyTeQsnZ22WwvrmiV4fuDmfHUPrVIY+
	 jRvoBcTHLXY6cqMPjg6iRmqvlA/GiN7DfCnTFqT7Nasn05Pcav2GYOvRIJ6vQto2VU
	 MFyuKBSKPBuxeaL6aAceJbn4halfKAnfXiHA+QvOjRs9Ix2I9XIUDH7hL9MjgljAEE
	 N8SnXAH2WQ+Vvf0Xp1qyMfwV4vFoM9D8woxtNorfx2B9dNlGl41oe3TmQyc7kOfggh
	 u82b5jh9SwthQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D54C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 21:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340968574.24275.5840827167436835587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd98c4d207e1ff7b1750b2572527b5a1c3f09a4c7e54e1631cfb70e3ea18d82
Date: Sat, 06 May 2023 21:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683409685
