Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7601382
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7059C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678947605;
	bh=+XuwfUHRcm1BvG9N/SbzWCdXxuOIGHS1PcYJRf7/+Zs=;
	h=To:Subject:From:Date:From;
	b=Xo6yybSz+2fTA9GJSRVfV2hIzx6NCYlECznWQ949HtAEq2sC2ieU1VE3Wc8LB+YEP
	 Vy3xm7qI/tRebBGCXNb+Ay2dwPkm9mNdbRaBnEKaZTMj+vijd8T82vN04RJ8zcesUS
	 y53hkAMYBQcAvzahPUNpK7gw1dvIS20v3bltMKbWHrpLP8P+r3/CmQkR2lbAq0axEN
	 6FZRG1ShL79bs/7+XkMnQMvwp/6QmYst18ZoTDf3JiGn33qr05OS/otLUqMlm0x9qx
	 9Lb9G0H14zZFPqhGknOqVF3PkLHPwPHHRNborcgAUhzHaqYFYQgpvrECp2/IwlzR75
	 X7+JUfRNJHzpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBD3C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167894760575.32191.4142249153885433757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77855cbc4337b9f322f5fb1378094755be435e8be585caa903b769a1a859b7db
Date: Thu, 16 Mar 2023 06:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678947605
