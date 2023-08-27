Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4996D11189
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D16C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693156448;
	bh=cVLA0nWkiTcuKe3vGx+uQxJmkec57kmc3lvjSeq2jSg=;
	h=To:Subject:From:Date:From;
	b=cPwQeFjQZyuJjw+aQOj+nA/a/BXhyViCjtppcVd+Lxtm1mT9wBmxGbmP7MbaN2I6w
	 ln0omN3YVJV2DXxI/Z5iVf/tAQYUHre99RbSw3+OHlpPtYpsEmOn6SM4HB5//6LfUE
	 r+SdYsdiEEcT9aGEJq0er/uavIh00j/Gr9Wk29iYBS2h7DDd3PBUk0gSRZVpfXEWeP
	 1kcb5auV24OaGUjdjMvp0+KMjFJatiKKTg1tq4VYnfECGM3TI6+rwGJbRsnzOcZ6Vo
	 TQB9Xka0r4k9KDkyAU42e70EKMg851UdVPlpArocZs7He3s5au6ZnOaf1SQ6G7G0go
	 LoEjfP8orxx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE079C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169315644870.15675.3106856867119474386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e18363739c65ece0c0e2ee7a3948fe0ab2379b35cea7dee38804c00426417ed
Date: Sun, 27 Aug 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693156448
