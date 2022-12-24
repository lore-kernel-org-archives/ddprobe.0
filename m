Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B28217E2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9804AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671885687;
	bh=BKeiHyOqb7XQms3gW81A4pcUzqlWkGPEA7lfCSw2oG0=;
	h=To:Subject:From:Date:From;
	b=CKqevTdbJdjZNsox0fmEaaL7Uh3+vv81Iy2IvkdqCYv8Odl4zmzJvad8YBzmxqTAK
	 VQB28WwQvx15psC6evgkltQPRqLpM92q6WnA4fbG6ZnN4iOVYo2MUbiA5bft90kdUU
	 CjYlPckjF1tavdoAAkyQU8/MBwAtZ7o1nZhKBsF4oVyd8hwQJPych76OHypn9tPbN1
	 ePIQ22n0epSMYjbX91D2OqgfpHbIkWS6tqurKDYuW/rmcbTdVVuCKayHk8cSHoRlS5
	 vS0qAkSojNjodYTXELU+LYZt5ytOlagsf2KKBMF/n8JpXBmbcCYSUEPH2uYB96cLiR
	 CgVwWbIOpXXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 762D3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188568743.12294.11240276082915827671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e54fd5a9180bcfe3b21f935be6e138b2655e7092ab3ddc2ce4425b205a20db
Date: Sat, 24 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671885687
