Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BA92F2A
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98EE1C433B5
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668768654;
	bh=nQVRkNCK7+HXRk6n+od+mQVnCreoIUWYkIZUjsKedoE=;
	h=To:Subject:From:Date:From;
	b=IVyEqgVBBGvTi3cpUWhZCT1U5ypadUJgVvR/+kAkaO+pqtghvw2VKOpVfFU0n0dRa
	 wpyJl9qpPBFyVmdyv5ERG1dz7cxb61I3+UX7BjuXz1veZ7iyrn4s5mG9eJIsIDGFrt
	 MaJ1ZM858aE8qIYX8mPd7g9fvO2srF4WO/pyh/GqECtnyBmZ1SgKw2Sxzrycj9rs9D
	 Vh+Do1abzBeGLHGeFyUCBlG0wQ26BnwjcnZvofSVeMxoJfsFXDba6yMpABqPqB3ZPq
	 I8EyHhiZxmnFS9xiXoLPJlRYRgKTQ2iG25mV6xHCBd1eIew1D0tNF/sQ8Yc3zwT/4f
	 abvP1nt8HDvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73F1AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876865446.25610.15817024407253811904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba6e796abe6b5ede2906ade6746b480177a388523de00b9f7d5fd53626d8399
Date: Fri, 18 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668768654
