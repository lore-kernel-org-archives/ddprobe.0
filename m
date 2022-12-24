Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D2217F4
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813A3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671894087;
	bh=LlNE6S3cfXHDzASGtM5rFmOiaFVZ5xLkhUNM/m2nLSw=;
	h=To:Subject:From:Date:From;
	b=tZbC0mDSXlYucLtVZUyf/KHpsME+WF0t0RMwMv0idKIJx69L65Mqr+ZvMOoeTBJZP
	 xxwncnu8lHMRahJ1mFj2UG3UgmI6PF6Mgr97B8ncVIY1w8pr64hFoPNaUDCU7g4r0a
	 etnlqS+rFXgLuof1FP5AA0hMX/hETeTVcxJeGrJQUcwNYr8hbIHEK8hk/Z+tfrahD7
	 TqQprXDAG2XTKFJf7GQjZBYbGi2MFzPKzHUtuUJXPjY0sCigflzkprV2hPfkTP1/8j
	 YZG5jMOdxjqG/MMpt9e2WuuzQfUjrON2oBXW0n8YM1Gk1fS6NPOnk6ocxMeTKeMi7X
	 8KxIXjIodgstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638C5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189408738.23745.16365170179980308842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202246ea24fc0add762810649f0359e23f8aca021bc68ed9b7e2c5e23b91c01c
Date: Sat, 24 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671894087
