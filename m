Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A6313086
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BFFC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688647628;
	bh=spK4PjaHDe1EwjCCortlsdcaFc/YAL9Tb3UnSAM7ITE=;
	h=To:Subject:From:Date:From;
	b=jEfDkMi/3QvEzI8dw6EGN9P34jaWTTvtfmbfG1BgMj6FbEe2obcOPdzYaLqp+1Q7J
	 O/kA0CzYUcJiuGdmo2Pvh9KDp/qNCRsQwpP+UFPfa5Ow5KydKTYlaWhQa617SJ+pKK
	 9Qb0XR/BWe11sZzJ/O63kXlpRB5AreJMEVt1QZIzW9MylbrwHeu3o0LKCvxhNVn56n
	 hp9yaEjKBJXx9JAYiEQUSQXC6xY3OOe47BlfOrFbM1ijkuDJWlOrX9YFtUETRlV3GZ
	 8AocG9hdFOQb1ewxcRCqkgLfOS5dSUUKtE0VgrtvyhiZ0Z+/2+f1WKV1m5hWSiG7o5
	 G7LVnF5Baoe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E7FEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864762871.32275.12774532269993085963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6b1b9bb65485cdfecc250e37f9eb78a51463b892957812cc8f77760515bac4
Date: Thu, 06 Jul 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688647628
