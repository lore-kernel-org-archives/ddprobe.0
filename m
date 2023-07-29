Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E5317C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 08:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B6AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690618929;
	bh=NQ6SNfvVJeFncORcX+QbqUDaEIck3uYWSBDMFYwOYwM=;
	h=To:Subject:From:Date:From;
	b=ETPAvGobrlRrgqD3wXbU3tXZjRAZtEF/THU3Ef3xm4aYBokhPLp02n4tvdCsoSUb+
	 Y+MpHYP9s2sdLHt2cFCCPXzsbOWV5Z2I3adI6M60edX6/vKk8hK2ooqKqXJWb3sCVg
	 VGdMu9ZQ9lG4e4rOSxq9HCFb6kraPD4JXRZqfGuKJXgh5uZlXwI42PfwrNLjZJ6R4g
	 5iHwqK+X1SCAusLxYlftkAHmdLfBbw/8pCSVsqcEHxvhnxtmTMqam1smcpBIAeYI7H
	 Xe0u4fDeHSYe4g2J13utRk20OVFDX62nJUxbrRfNQI62zarCQCEKfDMHgO+NflJq5e
	 N1c1kS1FdAvYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF33CC0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169061892875.19370.15366319882399611113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a44798c6913d73a02d732b37efa3d9cf940de63e397c2e9124b85408ef75a58
Date: Sat, 29 Jul 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690618928
