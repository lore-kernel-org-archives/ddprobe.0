Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28922563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CACFC4347C
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964454;
	bh=owtjcMcQ48PIfMJmr62dxP2y+kpZpbwqb7OS0haQ+6A=;
	h=To:Subject:From:Date:From;
	b=jEH1B4i6FAJfSyupiiL0qmn8Pjy+VzoJi3ks2GJTdNdcw7KDsN695A6eFZj41jX05
	 knkzUfQJ5eUOx79WNGh9XeZNy7Pg07JI1IuRza40VjRKygWH1SpSxd7Y5Z/ux5JwFq
	 osNdPU/CrLRm4PxaLyLkgU/8RV1l4817PRL/BkFxt8zDvN4CB1NY16offFKQGcY1Fi
	 +aoQiGy3Zr1zTWEMMnTJsslK/CAbwrjNJ0MurHtEz+aWLywt4Gy0sgHmEpTyncWNbQ
	 DHTBr8+ecvIgJECegZHStY2WQzHpnE91Dm39D1VskvxubXzKMHmRlx0j3ez71y9djP
	 6WUuy+kQQ3vcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A3FECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696445434.16967.6580691142596536900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa05a34dfb6607439c8f35e1df8916d217393100c898c0f4c42afc922bdbb01
Date: Fri, 28 Oct 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666964454
