Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D109C3209
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88523C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673370087;
	bh=O54W1XjCzgx7qN/Ztg4nfIEuPu3DPvX+X3+lPgqpjLg=;
	h=To:Subject:From:Date:From;
	b=J3f7XaEWtJ3aRTZpK4yjTNwHFE1/ILw1F/g40Z64iS8OgYHVKpM+a7GzxhvQsIDje
	 oJE7/7n0nu8LPHmU+T1m5aIw15tdsSC0y15sDLtsU85vx+zkyjPeQJyClX4Nke0j7o
	 ARASdQc2HT0w018JT1W41uJnDEh61r7N1gy1SJs8UiAxDjoMSzBj+0vplFfus3FMXS
	 TfIjka8xASrRtWIkz0MRKASMR+DXC/vGEOhbMmXYG+vmmLI7ZY06D3RMGEZ9wy24Nk
	 f8qwN+krRagzPYTSwYiDgPz3rtGSwBHshafEmqQ4BMmGEeGkBFsolj7c2cD8DG0Dyz
	 Gks1+9WOvma/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA90C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337008744.4681.17414081447604727877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf57dcfc4fc48304d5617f495c18cfe16920e216989894c41f87054668d56ee
Date: Tue, 10 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673370087
