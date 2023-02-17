Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554443C32
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 14:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9988C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676644445;
	bh=bXI3St26WNxitPUMr2sYCLffcPnEP1So8QJaJTPPp8A=;
	h=To:Subject:From:Date:From;
	b=dPYxq6gWC6JrsrwlMQZOGXz7KkDk4e+ebvCvmxWhDf5R4HP7LJWm4NElBvaJubAcz
	 f41uA8QGSoSP7rneRMqdziQ4Lg6JJRkAz5jU/eQlK3n2U6PeHK7IH58mZO6S7kjVA/
	 Fs9FshxjhYuz1jocJvfUzH3KjfYDNUxdIm3BEh1F9VftMqfIV+3fExY/YiHa3dxObY
	 gM1Q0Z5XwaUfJxmkiKJZINvgoo4UCsvTSg7KohNzkic0Ptxu9zZv9/Yo5e6RGWS/rJ
	 IFARmd83Ykd0NMmmhn13epAUSwtTbN7aSm9FzUt0yOxqhj2J4Kn+4J5uIIAEa3OMCs
	 240AEQNcmCUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B0BC6379F
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 14:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167664444578.2929.11263754441432299605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9180be5cbfc1e432426ac3b2d69427214df54c301685e189dc83196c42a4e197
Date: Fri, 17 Feb 2023 14:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676644445
