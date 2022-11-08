Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39D023A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D33C433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667872254;
	bh=Vsn8G6gbkYPmAodzjN3JTThLeWZrnkOup0c/HQb0g5g=;
	h=To:Subject:From:Date:From;
	b=qREVDDzVf2HHTcH+Z2vlUBRSA1/UgMk7Qm94X5MC984OI8tgqXcmIpr8vP0iFO7lP
	 eMEOyZW59VpvsfWE0kpEH2yh6jU2UvZHy3xBvhrmyI6QOoayNqad6Qo7/F2R0u410z
	 ccGbUOiJNXUr6wAt6kiebgSul2lTrjOkit/xzFTK070e7LIkdC/j1Nw24Yth8juEHL
	 KB/8DDeBA8nYCFFM7d0j5n8j38tDYBCT2yNxXPgHjz5tOKGuNkjQ6mUvIha4DWUTtl
	 QKQdNFFcXGsZob1JgtjL8II3IhzThtUZwhHIdz+Tqr7gW+nL81TJRfQPQ8InG68HZ6
	 y6Z0rSE3fv/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B58C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787225435.24627.7183772854398385200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ab27a4752dd074425c92538792f8faea5da398d1f6d463d8b65e1258182087
Date: Tue, 08 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667872254
