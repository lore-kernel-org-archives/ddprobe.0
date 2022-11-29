Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7640AD4B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8A2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669744854;
	bh=Wq8BXcqSVXuvZGuOCu/DEneO9OGNR+PPO43yueGOuK0=;
	h=To:Subject:From:Date:From;
	b=C27FiJXZj5gVYbo151dExkPc59mk7Gxwbe8edfFouMGNI9/L9HoDPNu+4elFB14/A
	 WxPuAGrt0i0c2KvmuytvpKFlXDHCooX3tZ/Rf5ibQt5wa9NzN8ekd/q5Isms2uuZtA
	 ea4XMajGXvP+yAt29fhRodvUz9BbCwUlwUg5/3PFYBtunCbMth34mu6iQ76fsfYsTR
	 v+obqtUCs/r7M6lS2HYwYHQ1LOOBytiJZVIVt3R/Aef/RYcaV4laIRqhuBKi6ZvH6G
	 eTX6yRcjHLgAOyrRwOElE9mJsAQZEr323xFKW1f+51nLx/kcC3n+WR0Jghf3Efb+cW
	 ttrmKMJ3Io0XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F779C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974485431.3512.13947540472587825515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdebb95cc5876a74bee0b4133448a2ec6e136d3df56a424c18f34da20ae3d93
Date: Tue, 29 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669744854
