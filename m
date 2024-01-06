Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B583C15
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ2uN8Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BEBC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704523696;
	bh=YTE7V5c6kle7IDK3AiBFhqg9XT8ZEZM7Qr1gCMzaYN4=;
	h=To:Subject:From:Date:From;
	b=NJ2uN8Wwj/MY47wJvYFAWx4No5uPe4jdYmxyninO6gjJ+5IPfEY4vHUbf3Jv/t6oa
	 MAasNLxdttW8FVx4qHdWa+AUejtUPmyGBJFst98Ryrkl/4kTLJMmlt2Wn6GUK6e8XY
	 0rKDcZt3G0DCs9Wn7Qlgm78NXINm+u9+UlIvpVuKrq5t+Nf5m0cUy6rReK1Rd2iug/
	 CTnLmUI9P/NWcGOV5GOb2hS8hOxXPR6aDsx96R9qSogFj7z52No+oeOq57COFOgMbf
	 uUA96maGBpJLfHN09QINBfoHrptHgbZonq+wDioqhLPCx+ayERwDQ6f2x2OpIhe2Uj
	 pxvFp3gafmsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FF6C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170452369638.25405.1082625571286193825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e3430c80613fd980f2b652ce76ffc7bd8c80553a938a0b9375101c28d64f56
Date: Sat, 06 Jan 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704523696
