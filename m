Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B2D3C0B
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG2LOGxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A56EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703746096;
	bh=hwzOtmsYQy9oxWyhQrqNqsV6NR0cljRUDarKCIP7Upg=;
	h=To:Subject:From:Date:From;
	b=fG2LOGxsJCRWyKc/ZL4mf4Ir/jBty0Qme7aL2D+BkCaldF+WkKKU+LMTovdjtt3Ha
	 AiN0IW/0nvyxc/qcEiFNZWgaLgDBR7PNEH16D/2DWXzRQk3yWYNnNFfBW1PizbEIty
	 FazI2IHX/Dxy5daZLlpxML950NW28GTfpqXj4q79ks4jpcMtp2F40j0KFph0NMOhT2
	 bzNg4VAT+Fz1il9l7c1a3RmbcD9GoMIbl7K47VdhT1PcIlUzotp+9dKVbZK3+pOZxn
	 G8mfl8fYkUqyT5hYhXS5n6kHjS0t8ZJa+eGLMlXb4a1YkxgIDx2ZbGVOaJSTNX9aCX
	 B5lHeglxjcPZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60257C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170374609638.9122.1661455743385891389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e80fca4fb5a0bcdd0bd936c86a1591d446a1d035d2c4366bc903685cff88f1
Date: Thu, 28 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703746096
