Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305E1A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A6EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673124087;
	bh=0hctFtOEKptwJeA2NpsUtYGyGAL3xTKD0UZijwIVyuE=;
	h=To:Subject:From:Date:From;
	b=bOct/ebBJ+ct5Uc875qyjcXfs4KpoZBpmTDup0XfIa4kXXN4djeOTp9kBQYZL2HcS
	 X7NP3cX6+DrB4Z6+KtSpYNlQihlvDeMioqOVy1q3fDNUEOAyCy1IRq1V+RwNaL62IS
	 rrx11NJJnaAlluX8XILgDKGJ4/pgUhYiyzbg5iATP9oMRGv9+HqhvrzYpWbn8yshAk
	 c2JP4ZVjdCVwzqDFr5I1gnml/hT6CsOr4kbG37RVpY+Zvj99qBw8aaA5wxOXOx9JgX
	 YvotxGqqEjv+tWspH6Tji95nCN9FLFT4Z4SnVEprdrf8wI+0A4uY094NVy70n0Knd8
	 ThhOcNQ3CO82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C9FC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167312408760.15853.10087249917447931717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3553f0d036895108aad4a90c8d7faa6f38d0c4ce12b15e79ae372e6eea8064
Date: Sat, 07 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673124087
