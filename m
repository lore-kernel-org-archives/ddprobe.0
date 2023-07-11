Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FFB18AFE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7928C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689092828;
	bh=8LelcwiJUaOc2ZP06bjM5kFNGyVUBDNbr2AVWzc+x3g=;
	h=To:Subject:From:Date:From;
	b=uCANUdo8PwqAVmh2z/u26xAL9lpMm7hmBUiq6k1dhZ0SmGPLxXC9hdxTOI2mBrhxj
	 oeDbrGM3R1AqfOY5clZOzhaeVZ0BCEpMRUPxnUvoyH5XFQaTuy0+BvxVlbbpIPj6pL
	 uUGQV0hAIF9kpfne4/BAtCIQPz2Slc/3GvlWYaCmHOMDCQUYEowPjilNl7TqnE7r6N
	 frbIPvDbaQq5ctAklKCgIJjOBfBUXcAJtYAnQ840VkozIQtTWyBEo2IYMaJV76LubO
	 xGcC2d30bgdnzEyGF1YFYkneekAAH+1KYMpM5+5h04DuBZSyW4m4leEDSVQ+Lcpt1z
	 7BDGqjR1LVbjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9587EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909282868.15210.4857207020785749742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9620c08611ba8993eb83262e97815270c5103b2ffd80fd942ecf5ceaecbdc3
Date: Tue, 11 Jul 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689092828
