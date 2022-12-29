Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5C88C0C
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B58BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672351887;
	bh=alQhzRRcPnjCo47shMsZiMUvEU2EQ6gcwaddZK1B/Eg=;
	h=To:Subject:From:Date:From;
	b=KayJHVa0x49YodF3nK+YEfK3ZcNjbqqStCxUkaZjqsGczz4Ao5mDQlVgCrNRU8o71
	 S2Wojv7K1iS8BjPSO7U/MVzDWUQdqGweciycLbvK9viqNEAP9MyBy1S3Oa/+RUO9oD
	 zRqyKr9a82b2NzZcqe98bE0Jlq9AlcD5Ff5OnX3HOWwOtl2+gGppXT5BUne0kAznWy
	 xMvms3r0GUxZ1qJUTWycWideu4PW0yBxbpbsEwiA6QFb/wQKJ3XVZlYWVWAkZGvLim
	 FB7wDaPmt5IfeBNs0B9K0gi8/C+k/MN/qtNxXM9IARrg6yAdy99SrX3t41DLdZryqK
	 0MySnsxMgheKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B94C3DA7A
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235188742.4579.12556909350075845608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7f70281376758c88b95ec98e849828c6934170614a11b3fdedb22df6b2b4ec
Date: Thu, 29 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672351887
