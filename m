Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852E96FA5
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 05:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC73CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 05:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691040728;
	bh=HIOTRonXSKetbIyaVGkk+e1SaLekcv7gLnyfoMRqlgM=;
	h=To:Subject:From:Date:From;
	b=oU1QrVOTcxLy2gFivhTFM0jPsg3M8CPO7nh2ZsHHTFLiUfAURGSCxuwSYVWysyr/A
	 zJXc5Mv3RRhhBHd69orc3MOC4HErZ98JyKWrQt8YLIGMK6wVo2DRB1g6vJWEZr8Fir
	 vzgsjNw+rI4L88GLiulF7e1P0odlvNx0EBgF3eL+MUwW8CaUbje03L9/5rhXR6twmK
	 s0V8ev+md9gwG5x8eOWGkLTqhlm4T/tJYwua/2NMSulMxSrHaXD+i8kxWEljH02/NC
	 l0dSydIe/59pHqbnBHfzHSFWjr/DYpqOfNXhVvD53/U5jVYBzkoxn+6XukUdCxHwHb
	 +wDhr04wVrt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27DEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 05:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169104072870.17860.2392328421564920043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b87e860c85ac31959d1f85a970aede4023e751d327ee8483df7ae9fb79592b
Date: Thu, 03 Aug 2023 05:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691040728
