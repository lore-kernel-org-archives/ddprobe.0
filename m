Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6AD52F3B
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94977C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669491654;
	bh=N3eNiymgSVHQjdhmR6UWilRNCfLJ5/eA3USJca9UGas=;
	h=To:Subject:From:Date:From;
	b=iRsi7Yr8JBEBSPYPkH6GLv9Y81EeKpMnEp6fHoMn2joZCFNme05iBNqeJB7C0kBBl
	 GWvMachqn3Ug/e/ZxAKvJ1pUbcLjLsL3AOW1xEPWCtCpdB7ORcya91oBgRphc3PAI+
	 rOPGp5kmojHWHIKAc3Jue8HlnWDViCwln5wztu0n8XqwUOSND3A+Pndu/ye8m6NSJk
	 1z2uglrkClhKrvI3OGaFM7PfYdsj9GAY8XVNk+MU4PhTw0szDgg0soepR6mZ2q+v0d
	 GukL7knECOS1KjAeNezsTV9eO5cBlJriKKHrWO3SVIgAi937NI62G59jeEQ+ZJau7d
	 fIioUr02CVfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78256C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949165447.15868.2246050622665387621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ced6b0722a9e566ebff686e83417405112384bd752a5265e10b922252c5c37
Date: Sat, 26 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669491654
