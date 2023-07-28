Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDDDC2C0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 07:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13F5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 07:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690528928;
	bh=A0DQWHBqDNPXOFDjThmcDQE4l2E7Dz+8Jfppg7tu6bo=;
	h=To:Subject:From:Date:From;
	b=Mb4nhALBk+2JuTIkGbgD34DkDsNDYCfVdqmWJXwkp/HTTLTq+5NMtFA+6wdQu0iDA
	 DBMav+6/d+mrxr008z9VqAHTRBGq7tqxK30y/8R8e43D4+X82AUXGNematszLnS5sB
	 v4PYIRoYX99YNKYDtUZLLMLnwWwQzaAmwMq3WufAD03WdzfhzPucBM58fUL9arlcUr
	 QMIm8C6lmNw18VdgAIxNuJFvnwAGATvEiABOT3nYwlMwAFkNrjWknzGkLM593DFDr4
	 h8O4pCBQzDPhFr+9TDP8gU07NTh2H9QEv8vqZjhh3Pq16Cu1PyS6e/ED61G4w1M++M
	 CnYdHxMt3Hh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28C0EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 07:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169052892872.14207.13777584007042711942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57f3a51b2671c22cbc1481c2e5a802af364d08c7565a93c67f3f06458fff82e
Date: Fri, 28 Jul 2023 07:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690528928
