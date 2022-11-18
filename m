Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE18AEBE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F5BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668813654;
	bh=9QZXejs4ORkR4gNcdEemHd71FnDBtrK+E4OkuKZB8FE=;
	h=To:Subject:From:Date:From;
	b=Cw3v52MEnjWmDubJ0Qyolqpp9NF4UcpbEJ4iVHrW0rY/dvK/wnEMTt0i/Pvmdl0Wt
	 Spz2GfVDJUKCo2oH5EwQfQZYAnlaA5T5mZCcS6lehEBjt2GVwa+YPblZ8jQyc72HvI
	 o14K0klWuOYmjDWvJfCPpYZKbVRfmPt8lel939eB30v6vs8B5uccaALsuX2Jer5J1t
	 cJ2j1Vqllo2DBByOcvHyyibPD5XVVdRq3t6WAmkCc8AzNwHAWw6I7E77UR9CPPfCyc
	 ao+7fHm3Nwud4ncG+vt2f3JW0Xngnhhq9i/4uIBZlu0CNUqdBG7ZNoqdCS2wsZJu48
	 kiOGPBP6wrl4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A18BC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881365435.7550.11709609797939293048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f75460f513f5927dea3b110f6ea08d7b40b120076e903963acbfa2336fa3a55
Date: Fri, 18 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668813654
