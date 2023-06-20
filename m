Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AB81FD0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A34C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687245128;
	bh=ydtg99m6GpHkBZB1sEGXBOlxxDz24VO+yfRwNF1G6kU=;
	h=To:Subject:From:Date:From;
	b=DT3GR3SMFBufrymUX/66Ng9D/Z8YareyEFg1UOTrNUAZmt8AZ66elOhpNSVqXep8U
	 PcJOz4TJ2CLLSbu7WoK8/TVcGdLz1gL7wOIWAhKslYUQiZBH0NpsXM9oTPtAqWQNcv
	 RS4THM3xTteNyXhksbX0I1TwrO8GLhQnLIFlPsXZ26JQpBzMQxLOMMVpX3SsGmxRpn
	 fuC1A4Trb+W9ogvyqCXbvOqe1ZTIAEiPrf58mPX1X/aNQRO6t0EkqG6L+B0/rAjWPF
	 4fAWACFX1eAOMbohy0F8fVVmQu9vSoRMDFD/Ne38IHU0M+jw6MAduvRjG/2wbJP9AH
	 379eiIDnVQK9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A707DEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724512867.3956.16241767763334936560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973dfbc8a75fa8f071b3744b214620c53e6da9ead4c99ba9c72ac894ea4cf936
Date: Tue, 20 Jun 2023 07:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687245128
