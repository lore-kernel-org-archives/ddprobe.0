Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8542321CF1
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36426C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683758526;
	bh=Bh+OJlsmXH+l+R43M3c9Bun4iC5uLKgP6HT3P5jrP5U=;
	h=To:Subject:From:Date:From;
	b=iqjmB/Hoi4tNAL+3VSRMkv8CyCsHzkLmtvxzrG1tIsn/KQW8Rd36McWBebMDZ2eze
	 YISL6xvRh3cGJ+myDJ4q4uIvX/IXQknWcANnpeOxuFKAxTusW0bCCEWr/LPLeDhWsr
	 N3JfB25Mj1uL/rVlc/Mra1DDe80Q6XiZtbBK87Wx45HsyRaLlmuxyHZ8yPDCnHMSPr
	 i6DQxG+TocxLvjXeyz1+nuhXBRQowYch12mybtZpAXMv6OOzW5tGRxuiwsN/KqEJHI
	 FYty24NNX2pp198I12iWaH0Fh55BKTtFAetNTfZuIkuhbTWACbAGeOEdFmBJmh4mBZ
	 e7yLAmIsdPPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D101C7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:42:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168375852602.27374.7847285168413502591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed0071ad84db5f9cc7d5a2b37da059b3219eb123d3c21942dcf2bd466e07ffa
Date: Wed, 10 May 2023 22:42:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683758526
