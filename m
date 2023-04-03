Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E55D7E
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 02:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1489C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 02:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680487565;
	bh=oNYKyU7xiUwvM5bZ2Q7nCBCXj5bQ85FVihLDD682UQQ=;
	h=To:Subject:From:Date:From;
	b=aJ5yHWexfUI98tkQAEEaYur1hsGnf6nk9UUmG6ZJTZV7v7bmTQqivTPcgFwDjcVB3
	 BU7go7xObrBVrzrLl/WlC41cguorDnkmavQd+dmb6/jpEHLi/gZsZz/VAR/dxT8+pd
	 CWQmoJ4cvhAY6Eu5RBIoSgqccQDMkwn9uzRlLODysCK0/+i0IvsHzbhK3t5k6niTc/
	 cU3Rd2H7FOhtAakUe78JkdOGx2uaOUFm5H18Rd5KyXwj1Iie7MO+Ij5suy8yc6FtUS
	 hebsPHhaojMF6X6JusJIF61hX0HG8Eoo8tvCGIL8wrYYJebhmCfExl10mWe43KbMpt
	 x3BIRm9d2sB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06C1C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 02:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168048756576.6408.11001434894826007681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e1981114107f51130ec125160d958b8fed47e33603c175d1ba2026fef8e4ce
Date: Mon, 03 Apr 2023 02:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680487565
