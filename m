Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC66D7E3
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86519C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671264687;
	bh=vNSXKyN7ztl48JuiOnQS8gdu4Rl63himdyfaqNpswPk=;
	h=To:Subject:From:Date:From;
	b=N2Oey3YZNDVKL/sHrHvN9c1tnZ1c4WK3TnXJFVt7Mijg34b69dHNbZETvUltgeD9z
	 2PLSP0k3th0BgbHloYf0eDE+x0Q8QbGJ5iEiHHaPyb6WYuRY6vrYtE8NetS9M4A6bq
	 Mqn7QEDUeDRZw7TzUPktLYn1Q37ALWrHIV7tVY4iKKyvAvOFDJVjMljKyjTbcdbP/8
	 BZ/VRJMJzKODP9o1Xh2HU4MHxzSDu17vP9srx81RXiONN9YSdSFPWpwZsleHwbJnB/
	 japD93X99tR4+7ifcmwkuFZcN0GC2qylZJnErPnYue7XSUzELQLH+oNSi4syo8wwNb
	 9IDVNgeuxqmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A278C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126468742.22438.1162246705534881400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37064b96c3b6fb2afc352b005bb6d0f442a45d12149a10771c993d2b12245b75
Date: Sat, 17 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671264687
