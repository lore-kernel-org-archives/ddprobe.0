Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E6A7F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 02:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC609C433C9
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 02:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692843848;
	bh=K3sCI4njrY9qMJt/NppALXwdJ2JY7yoY6nMRvViAOOs=;
	h=To:Subject:From:Date:From;
	b=nireFFFJBciPyCgDHndAnwUS2HDmxuadrTRFCkoJ0g4QvptFWxs+0wCECm0ieSFCO
	 kqupNPE7z3MV5ATJWCmXPSe5bPhZqxCJPmgp1cpXoaWaRjqaT6nlsyNiCLPzMgco1N
	 P+aUJzdAPe7IN8xRYV5DH21hQzzZcMj/PlgjfEegG1d45B+M/qhJmRL5G3wxioaV89
	 fGYwuBmeLTRD0HtXjcx2NONFK+EH3S+v0MlYAgBo/3eqGpVtjPHLIwLNgdqMyEV5iy
	 Z70uEYxscZXLJn/5pJ8/K40pY0qM6OW0X9GI+GE/Sn976m+0rwtsFzkzjvQEyetAYi
	 Iuf8KZlMNlfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B748CC3DA66
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 02:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169284384874.6418.3613956287090460032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0934d06066947a42da130c8f544c989befc22dadeb7bebed67c36642d38d692
Date: Thu, 24 Aug 2023 02:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692843848
