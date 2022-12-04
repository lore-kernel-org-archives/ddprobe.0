Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DB02900
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727E5C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670154054;
	bh=FaYGuR6VEOmRkcens0+pna7xBCeOsgnYSL3Dn/YoY5k=;
	h=To:Subject:From:Date:From;
	b=Axp0QjdtR9gVd+Nam13XbW4IjWrsBjaYClE8ucRLH/GDCluqoM+wgEv82MSB9QrFH
	 ci6/w4OFlY9kyqcl1GTGWeDO0s1mqbcglzXNCIGGgAMOAS96nrDDhca1sxaqe9xT+X
	 uCPaw8tpt+fWKqa/zTao1F2LbFY0P98GenqY/9jMnVyqa1tlFXwDyB/tZ18+opwM4b
	 UhDnl6qKV2NCyeUN6Qr5kUoOaB/zxNv15CPhP5iK0YBDUVXkqeMR0NH0YrgSuWphHw
	 DC0zFu4XXqZKIeJ7jUjskUiYdlxMeaU8C7BlirH84SQvDe0WqHxIyFc283eNoaAecD
	 jasuSc6Ff7AGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5880FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015405435.31651.7191371064113461221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd4a954b37bfb75934ca5e98d2575ef73584e920c17804ddb50f1143612dff2
Date: Sun, 04 Dec 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670154054
