Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C831EA3C
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9DDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665906053;
	bh=n4c1g01YmKKAIrg/kAJfJrqO+R/Ue7WtPCe3HawKDg8=;
	h=To:Subject:From:Date:From;
	b=DR485rdKfumd2Hxnlt+g40PQ1iJgAdly6BN3laBPClN/3jVE/XjxH+y1lu8LQYpkg
	 LwIEX8KoHtwRRoraE5HUCMX9njsqyS+Whk+bLl+NKbg2pHW7c5bFe1WxSf0ZhoFNG3
	 1WG5kFq5BUsIbRE1fkCdB5CJ5t+vdighyGVFQ0qFzNySIyqYf8i1GoIoT/YH4jeOhQ
	 xdNKspm0WIGrgtQYXgmH5VEikjVTFRE8G02aLKNlOPmcxc4WS1voQRpFl41OwI3LtR
	 KGR2bA4Icvg+DZ5AJR72MgjX1Dey0BzV68DEE2xEGDeZGHeVOLnVqruxOqupJg15D2
	 2dW57TtsC4Phw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D26C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590605331.6821.12940851744010611362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a129ca3ecf631a9acfa6b702a98e51964f39fab46b7a140fcd9ae359188f11a9
Date: Sun, 16 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665906053
