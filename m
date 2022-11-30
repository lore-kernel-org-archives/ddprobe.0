Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9206AD3C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D536C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669842054;
	bh=fHjEMuPwWIDbdiDCdyUhkPOgxvwoqrICbvLpiNTf2Sk=;
	h=To:Subject:From:Date:From;
	b=VSOCCRKP6aveFTjWwbnIF0oQmY0CibwGVgKX9pqDPRnk1SgL3/XvSAz8XdaZvhe+l
	 eiHlpOVPtZ42p92D4rfyF9/lz2EkSWYmkRZiUnxJjUxVpXBgPh4LxDJUpRMu68PwKS
	 YBkTjsYPgTxKwwVmSHh1+oj0BUw6yIPcW2XRtZZ0YCvo939JrZiQ7PfdQAYtP9jEKr
	 +RQfh2v+4qkxGOx9JlWE8nouGbB1CU8ZwJS04EU8ANvOorDHaZdqOLVpoeHJVDc50X
	 ub0ny+KSTDRJs5Mkqp0AyzaKA/k5iZ6bYHV9CTM/E1tRpDPEvgEHA8nci9iXmLnPWT
	 5XaeIlj/2egSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A33C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984205445.3770.3430140869607773767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684115b9e9d36a6a0a1fbbe1a4a0fe7df67cc8a11a8e10c7ee192dfc9f7cd657
Date: Wed, 30 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669842054
