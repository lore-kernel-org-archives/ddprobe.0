Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C2523B7
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAD0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671543687;
	bh=GgIfYEFuXyZJ+12GI5mgE8btwdAaSOADOBIlOOOx5C4=;
	h=To:Subject:From:Date:From;
	b=ucWThoRn7huV5P4KpfET2X5gu9yRJjpcXG+Oc8ytQ7qDdO5t/NsEYgXyXpw6BY+uG
	 MJMTs/V1ZWGmDgPcEWlebCHNg4SV2X+kO13mBQamzKJIWnSL9f1pjd0OWdNaH/MqQ3
	 dqniAvmDA/pEEDgLQcC54PDCwaghe+Vkva3enzE6BuFi/mNMPl8siLU9y7nSKKLZh4
	 pbtZAcu/k4PXzyxU20l65Ys6APsFHFXJcoteHahg7PWbw2aet1OvaQaKCeY0o/CmoN
	 P3n72kRTk8Y/xKJCWKSAzY5jFcNMwoygQHl56TPgRX/XDbdEtgQb/phFlr+xTHeS20
	 29T21X/nfTZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62321C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154368739.27971.15119402129971720572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c5e29927a778ee76dbde45ba3273943af24b07ed5ba0445740974f6ee6daae
Date: Tue, 20 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671543687
