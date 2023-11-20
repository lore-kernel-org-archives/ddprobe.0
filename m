Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CF8EDB
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD7CDaAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818D2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700439496;
	bh=zGtj3gwcUHAorYkKp89Gv34mYeZybxSWaUMV4h8m8is=;
	h=To:Subject:From:Date:From;
	b=uD7CDaASopsUh03q4+3OtYdWUXjLnIp3znap/JJQk0UX92m0qH6B8z/eHz96InvBl
	 zm6df6YHsIfrs1S9d1B17/dxpRuzMD834VFksqGKdrUkn+l8+EbJcnkoW6+6N+RAVu
	 rEHWVrz8paxxiuua01f1FgU5XPmjRvKk7uszzqvslrneuY00KXWbkxzaut8zqcrtd3
	 GGludTeL+RY7hhvcICVWOGcjGfyOUITTiF+PuMA2yeGcwX5XpiqAJJekRnSGm6t6KG
	 qVxdPWmWzOGRA3J56O0u1EWxnFCmfjHqXfXDz0zhevNseKfkfF9/w4kJxuahpZnMcA
	 eT0/E1O5z+6Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC51C54FB9
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170043949638.14339.13383800878257482023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09233017e1ea43c69935ef953d42b567c93b3494d0dce049c823700dc4c8c4fd
Date: Mon, 20 Nov 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700439496
