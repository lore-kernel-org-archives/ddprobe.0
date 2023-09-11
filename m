Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3E2B679
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 16:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FCDC433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694451248;
	bh=xCGe7zrM8bHN6Cptg/BIYfRW6gAICzuEmyyfy/1UiZs=;
	h=To:Subject:From:Date:From;
	b=do7yEOwLJwc14S/FrLYrsnY4fXfL1SJsoko4gZJ6Q4pH9LiAIUF4ho7/UmtN5JcWP
	 Jz/Jnkaaehc1BX+G9rh2bsJCK3EKLuVohtTEpS6L+NbVM3ZdBZVaQ0XTUHBDTlgX1C
	 j8estwKFwDnhbVu4KpfVNK0MlUN1giZs88EwzSTcuLiXrRpo53MmlH+bgIdDoabavl
	 6V8MSjL7lE8GYpc7v4qMT5BacQ+cW3ibXJLsgpCMJDoYoFs6nojktJrnpuw5TeCVne
	 Z2zPSIFjC3BbXKX+BFENRd3fA5cvN2G2jP2+pzBOSzo1pwX0b5PL+0VFHoDIOzeJCI
	 SXF28YV60M71w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C25EE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169445124867.22476.5481762712379656803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88632a465f0ed228f20eb4c09bf4be9447790ab9812f3d9871f439e5c9a4bf4
Date: Mon, 11 Sep 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694451248
