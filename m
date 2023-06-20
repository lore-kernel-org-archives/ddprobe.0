Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4983E2F5B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 13:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37FBC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 13:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687268528;
	bh=BG1pG22C4rwBN259wKFadRreBaAJHZT37kpHQUntDZI=;
	h=To:Subject:From:Date:From;
	b=nq2fnl1MPFBdYG4QGRYm5t83dRRHYUU36u2MawXF/4GHj74lW+bk/Ve/WoIz/lBp2
	 Q6xk3WJLfCstMuuADkUajMhRR8vvuRyn63OsZI9+4a+MhXBsf1qG1Nd9cSOT6xXMzA
	 eLjSU0ArBQKRvd2I9oq/9lFagSa3ldFmHoOQF5YouevnUSyw1uzlUNSVqo75JFjDCI
	 Y8HnWw5XMFIOKQl1ucQfJzxx81Ha0cqMVkDrkfn+DLVwF0VOseBzOmJ0oP8Dw/+ZeG
	 PcAKsooSFEUGXiEnQiEFhEW3sahO5Zmiju8O1xoWHtK1KGRYdTL/a/1Ek/Zsrd3rCv
	 aUHS50m2HhugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58C9EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 13:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726852866.19025.17731719409574379579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef88cd71452df1229a08090362b4ce608f3d16ca41ad128ff947b0b41f0aa4a1
Date: Tue, 20 Jun 2023 13:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687268528
