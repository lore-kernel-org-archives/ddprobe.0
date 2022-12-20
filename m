Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CF07E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81760C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671532287;
	bh=REGNfrGDQ/lk4xnydllhVk4S8aRNbA1eryFdErYywZQ=;
	h=To:Subject:From:Date:From;
	b=MtziRioPaDLoMwvbRbroGqfdC5yXKn2+toIR0iINE9FROi0RuvtXqUk4HJufMrsKU
	 I8wXIoIIeOyErxKMzCLZK3qYh82OjNUFZZzzLwpI/8GqU697lo4Vr7pTnmEUZHqeB3
	 M8nS03WINfPHFWCOcJnetK0Y3w2v3mxiQJ5UxOpwBCp+rj8HeAu9dl32LPtmrsL/Id
	 Vv3sOpIgq9PGBeyPQBP7zp7g2NJcZ+fX1yWPcprsLPTr1xDydfILa/ew4nW10fQr0k
	 AIaH+CRC2NP3N0RR/1D6z/UxE7h4mPXPOHamETMRssap11zIUnwRReBx5Bc/pAVY79
	 CacniM4JbyiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62611C4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153228739.22231.3406275012190176362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e8ff3d0bfda150208f885c20d8e7422d90bb8d039352ac553299cf275e0d5e
Date: Tue, 20 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671532287
