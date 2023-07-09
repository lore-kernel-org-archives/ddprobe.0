Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C112574
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDFBC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688911028;
	bh=0YFONdQJkQGQMNttTuLZypi2wcMD0qg2pSSE1sZ3w6A=;
	h=To:Subject:From:Date:From;
	b=LOYv7asoHLr+OypRGWnKKbeGEr/gSnXs+QhGCQGHusdeBIJrL1gVC4g++pHPhcQBD
	 Wnn292fFijVrHwPqezNiMhXAymTRGpoLW8GtBJSkxm6MhmgB1W+Tcntq7Nn7RdEYcc
	 FkqPrV4Sh0SYObaBu+5p6Vb8OPwkB0QQD49B24keZVMhdEBqZnDz9FldFKTyp7JRQ5
	 mDWVoGQ2Sz/uYHUoTX0xTSxEpqgcOzOSlBM191PtDxrXX/thiKXWNSK+il+972PE4C
	 Tj9ARe//36dOa/4dN9/2BRQPJX97VDcAGM9Vaw8c+yaIXlgxM4EAonzDqsFK3nSy3I
	 p/3gj9rX3Dcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0732EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168891102868.4800.15394698549192219715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d085ea62b9cf7f34fcfee0f2eeb192b2eadf9c5e7e652a4fee61c8864963fe2
Date: Sun, 09 Jul 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688911028
