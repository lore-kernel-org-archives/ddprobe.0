Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4707B28EA
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDEDC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678876805;
	bh=zo4c5xSbwk/SDvwReoS98bASDakHdgr9fmVp7d2j/5E=;
	h=To:Subject:From:Date:From;
	b=bweHFzCPQ7omNLs/balYtOrydHHniqBc+4FYlfkqJxo0+qWsnje+aZxxnyxFLjuIb
	 UCUzFLaUysPd/NqP95KzvjqWj3ffcMOlWdTmILyWofX6qq3Af9SwBdoPyeddXQn3v7
	 pO8bGuD83BlEV98+PIIIwqChTSZGs7piQgA9pem2+2UfJW0iG1xZ6QjkBAX5Psh4lD
	 6ZB+PesArNDm2bbBkmvXYO+1YLsr64H3bPvBMRKwILP2iN/YSPbtxOk+AfsArqwqPF
	 nN8nairce/MdJHGLGmLCqQuPR97NZNNQfKHp2jq6y22+dAGhzG4gZOu496kEpkTyLe
	 4Fdy54KALFOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06A9C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167887680577.30608.6327693813410818580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f24fa8cedeefebaacfc91929aa0598bbbb39a09f1f24c07b28340a0832f563
Date: Wed, 15 Mar 2023 10:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678876805
