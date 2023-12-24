Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBF5101D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnjsVuSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90EFAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703459296;
	bh=ukWcAEW2OHuVfvyRR6blbPT8DtjlI55qBkeTlITl9kw=;
	h=To:Subject:From:Date:From;
	b=FnjsVuSZnmvOtU2OXTGOpSjV2T5qAvkCc9v9WiS4zzyv0qyj92ghGCEKmL8OQaTkd
	 tpA4hc6AVVa8tyyoBBKYKZe4KPMgKawSHGbwji+uNG0nzlyqHjgXxXLRYjBKMqQl3k
	 Yka+lovyzGMd+1pwoVCkzAq+0OUvY0vf+IORQqQkI6JMA35XcxEc6x2AohNcmAWRxX
	 ep5o9WrqGGOqT4KZRzxWRjdg8lYxw0VcBCd1JEZ6+N4w4+sw6i0aKJDKvdx0eY2wHu
	 OzgtRPeTKv7/XJ1Ld0/LW39R4RJSKgcm9Ps4fWvKJeDk9J3evzxg+hOyjJS7Jap8Yz
	 XYwWWp8j/K+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71598C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170345929639.29509.15831568066608213918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f74b7f701c81bd812f20012196744652d0932d0f6a2cbc90869d584e9d2b4dd
Date: Sun, 24 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703459296
