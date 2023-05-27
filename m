Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB137D
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC289C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685152625;
	bh=I0y1JOgRGHZEbAMR1Y449kPj3gYS2oqnn7yVnlGPEgs=;
	h=To:Subject:From:Date:From;
	b=REdpQbpUtYfXRqdpyNtF0+ViADD9j58gJgiO6lZzTJTMw1w5WxSV2I1pHAlMln2c3
	 TCpuVwQyvqokotfhjkYT+Da0qhuaUPE6vbKeKIcLYNPrIwe5cNWnbguRk0aOojbf95
	 omLbN4pJU+wJr5ThCfE34jkENSU4qxlOKyZLHYdpXmoJamy5+stQH4xSj4z/VjcnsD
	 To3tEUiZ//EyJD/eY+iPlfWYcpy/5FC2lWN61hrDzKWOv0eawHvczcI66SLglf4AW5
	 mpTnQkH3/9QEy16yggbUDHfyUu2kxxYbfFCCUn+iqnhr0BCnCa0M26kRnA7GofsYvI
	 +A482c2hO6GEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF7AC77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168515262577.17536.13958955334059699235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c080207e954ea5bf245916ea436518b4829846b5dcc8f978a4f7c2fffdf45b22
Date: Sat, 27 May 2023 01:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685152625
