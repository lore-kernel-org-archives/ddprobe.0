Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4419A1844
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9D2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679631006;
	bh=Sz6aDKK497HlzPMZ5QEunDNNMuzDul6WqUbDRjsdLyg=;
	h=To:Subject:From:Date:From;
	b=XTX4yuBw5UnzZIFFiqW/M1BBFomusRIL67XwO2GXTK/2AZ3rsCksIHFLLa139YM1d
	 2jOW/buefKpPqcCh4Hzf7REphfaYQEDeDua8xl3hWPqHRUSyYv44AMiCXVAgsx9CK4
	 llbhbZsKn/BjQ0G/sheF/S1zJNQn+zx+r3PykwuxUFp5x7RMgGgKcj9alFN980oASQ
	 DthxWCjH+3eUDdQEiuWlbDRp2TR1vrIooPZWQJ7NY5i5ZDSn9CwBJ2iOTkC+vNABX/
	 v8IQrg5NhrIuCUqkGAT7j7rfSmBGrmWX9L0EAIeN7DZB0lg1EbZPRKIgWTRMBvwPUY
	 nj1tl2LSGIhFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0590C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 04:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963100577.25543.8103721044603886232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf4207b8221339398e7f4dffd6d5efde92d1a4b7b60d4707804c39d37e786df
Date: Fri, 24 Mar 2023 04:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679631005
