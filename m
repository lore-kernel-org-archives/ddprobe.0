Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7ACC160
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8742EC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672705287;
	bh=zyqtaDtqnqryf2OCaTxY0DCFaqlCsbU3099Q8ShpF3k=;
	h=To:Subject:From:Date:From;
	b=tz7PWUQt73GBrwgZK4hytW6eJKU6mHYGkkgVtJJnop0iTg7wLP3KoB0J6qS8AKaX5
	 GPky370+iqjjY8mt9ur6gFSje4Na1ksxfYJluMGnGIvTEZMT37LBe5YKdxTyFYfdow
	 0+SFeWE+qmoMv0poKPqIBh/gBcerDdwrcFXZBHgG/nfyG9/OizJHlJHSceu+2XKxPF
	 9RGs2ggW/wz1JEiD03rfrP12T18v+YZh4Re0HdvpG04+y9J7cZZivfZDzHLCb7WB/d
	 ckR0ohI4s2GRjC4sdXF3TofLyOP+OUnhDLxIzvS97aLjkvQ5cyFvhawm/Jrutwb38g
	 VCjhe3Nl6OlNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EBBC3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270528737.4334.14941642793284196047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915a34858470d436a1bd981772f33816fccb6da69661c0a9555ad338d13e1530
Date: Tue, 03 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672705287
