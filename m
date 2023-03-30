Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC841C3E
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 11:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D5BC4339B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680174545;
	bh=vhJE6CtD+Hsj4n4DtSe68aBHlGin3uzKUaOBxa5Ztq8=;
	h=To:Subject:From:Date:From;
	b=HhbfM+ESUfm73cT/uwiSjJVvVJiKDg7e0kxsVje2X74h8GeSpmHLeq03WZph9yWtP
	 ZQAJ7Y2oQvCtnShqfOiLRpXFCsqIO/aYPgreVBrMJGxFgLeMTU8N3KYuiUw9zP6CaA
	 z9W9a0ZntBw3vVeIbYPPPb7DXEUKERRhA46lDyyBdAk/jJq38kjm/SoGgLjBqWDF0V
	 UtzXWU1l8pw9qBsnilUln1t1DVlub7hJkiXVBSyUf89IqjfSpNp/hWd8tENsC0dGQK
	 Orx1x1+fVLm6iCnDjZv7wmyv3MKMy9uYaHvgLuT9a/nO0ntlBxWnjBdCdj6WTT6RSH
	 CdkR33eRje6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BB5C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 11:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168017454577.11978.4675700947812837337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359629f8ac20d33d210d24a34062358c1de3c9fd1d3f42a55e537610862a7766
Date: Thu, 30 Mar 2023 11:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680174545
