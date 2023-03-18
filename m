Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3128F622
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 05:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDEC4339E
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 05:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679117525;
	bh=0gNhd/19Su+amf2YMom3d/AkqlpT3FBMIktzJ2PYBMM=;
	h=To:Subject:From:Date:From;
	b=hos2Mievp6cognb63+ArFS6viwH9ZkF4Ukp91J253x7bjCsnyTZERangQKLYdHi9D
	 AhwJarFDgDMborqwkeMQBl377B2xGpDBBMuecWfYDPC1FBC604t8epdILaCHxVlA9M
	 pFffoyi1DxRwp99tS39p/G7WzHttibuIIS3GoVEx+Q0wMA53ilGAacP1h9KXySg6ZQ
	 dxSOhOklt3didEy/aAXHUA/F5vE1Kt+XZ2TlJQaJQINxAmnj4SdBncWdPJWgQRlnGh
	 lkWvjgnj4Y7cXo34lmhrD61jV+Z4Pb0dj9YzEQA23/8zidhOf+XKLLYDjuX2QokSHO
	 KzX71QPPU5Lsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BE4C761A6
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 05:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167911752572.17675.5835492952734351354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6726f86bc706a483d8abffc8c2104c16fcf2faf466764b9a9f55607725960b6e
Date: Sat, 18 Mar 2023 05:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679117525
