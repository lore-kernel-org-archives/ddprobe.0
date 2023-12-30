Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AFBDDC6
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgBRATju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F4FEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703977696;
	bh=MwHDkWaVyLAfdSaL5zgtWX8n5PnjAMxyDv5sdqWED+I=;
	h=To:Subject:From:Date:From;
	b=JgBRATju6HuYWxlKNskqgK+WHXg4sNLfLXgyD+DshqyG/HfCtomzK5YreKVLKVMQM
	 l9B0y6mV6BNzUxVr2c3GKMtHZMOmZBQCZdozM6zKtjAI+2skYWR27+8PRVufY/SXxk
	 kCCaYW6ZIQ1HeWivtLpRkhO9BgnMKs2YY/X6/bmDZA4BMsG7eHelV8LZU7C3VNeEyZ
	 t4GwqZYZWJWmzllBgyeaPJRKC+ctez6RCLRP90SmyyFIJ7sJykSeOoWAhsE30ihZjj
	 y+AVJwzE/PXi1d6Rb26TlSuiUgmO11yPg2NyR3XktgrU43/QKVvrUrHl9oT+7ua1kF
	 CrHA1fjEYEerw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D025C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170397769639.3999.17476631976042613891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8404e7cad8019737c6a0611af925b1f64db6e1992cda59aae8676241106132e
Date: Sat, 30 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703977696
