Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4719618041
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 18:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C924FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692986648;
	bh=qfmU20XZCqF/EEFcQI4EJ0qPulSeqHAMb/1JcRYJcY8=;
	h=To:Subject:From:Date:From;
	b=ZIi6508SxxwSNdSKHjRix+ai4twCiYUuJUAcW08ouErtOMesMI8hRIE65AJPwWDIR
	 +pA4h13y1j1aVOQFyC6JbySpqmpPKkLhftFaWa7TeSCOfZ0TosN7Er1gyo/QuPxLs7
	 gbdDA0GYwsUM3kdHMJP6MwsfjGbcFY95XKBhubKdw3i/Y+oQxz6DTm1cYZmnbYoARG
	 9pJ5F4TKG3wGrHc/KQw1xFA+IHGZWQ5RQKuGMuZk9GT6AJxngbD6WUKtatA00Ovynx
	 usujPCGOPGCigCuTEKBsm9MbsBh+5QYGWhiit+zIYO/sjNnn0xk+ueTGU+GbeG8VO+
	 HC9h6c/NSbVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5C1C71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 18:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169298664869.21539.12312801638070238729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a88b11f3b03d417594ffb6e9410bb455b7905c25b9abf2d8adaeda3c5916b2d
Date: Fri, 25 Aug 2023 18:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692986648
