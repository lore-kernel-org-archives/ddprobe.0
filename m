Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E943C0F
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB817C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679931185;
	bh=0S38hW62CAhhJEjqPx1hgut+RFxCT6iLbtuv6dgTH6g=;
	h=To:Subject:From:Date:From;
	b=W/ssbbPK4kQ2biRDoaB26iKRtHHlEXYJfEizZQrdIg767nmfF5n+ukfTJCM+ahiw9
	 vahyYjnehkbJYMFh2F0/fq+fJlWQpmJT/oZgiePOQZwJgV2TKUM7nnPs25o8O5+AFv
	 pQUTuZk79snGVVyJoZbR/y6T8K8oyXRcbVmLLjips2u8cdNWlkCzzaw1bFhyOHmJtN
	 YUYJ8xp3pyKg0PU5hYBxkKy1zwJV5UtzBehILn11AWztX/K5+tm0+ngLO+UFjrIl8l
	 RFmHv7JjBp+6pknevRQnbvsu1YutVV5wnuSMjYckt4DdsHppoK0WvQwKqEjq5i3YnT
	 GrVeKTcIa1K+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C27C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167993118579.7364.16128171688060195672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0777dce6c2ea53ecd8bacd385ca97e06371f17ea78ff8156d413826cd9eab9ce
Date: Mon, 27 Mar 2023 15:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679931185
