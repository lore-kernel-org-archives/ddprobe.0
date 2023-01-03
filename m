Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B83320E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD5DC433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672746687;
	bh=d8WR0MXQNIP3UCZF2/nPiCG4Dzp2V1ki3ISvyudqpis=;
	h=To:Subject:From:Date:From;
	b=dl46VhUh5qtv8QQLn+/XyFLDOyZLoq4y9BvEmwUzImI+JldDLk+IUhnbtHbm9y1lQ
	 oXin6oB6tOo08HaGa5qtNjum4TW9nxfdvZ6rNgI0v4gL+1kFEloyjI+eP9Jzo2NNKV
	 e0Xq/Wfc5zSQj2UsHkEzc+CPh+NWsY3D2aaOKkIbN87J8uVew831zj2uOFw6lMCAVV
	 zkTyDjPqGGeytM4bD5bywcwYyMTojpGecEGwB7fxOIe0fgYYihnGED6tiwameF+ZZn
	 rTOImmDVBOhzDSVSSVYe2yPbAuuGWanTf+lqsl4Nt29UYYGOs1DR90+ts3eFYcfatg
	 UNMb7zGPgHrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0CC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274668758.30913.6026361954251340332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbd2f132b807a146b91d7fff8cb56d110b861a49aaae624db9fcc5927279c5a
Date: Tue, 03 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672746687
