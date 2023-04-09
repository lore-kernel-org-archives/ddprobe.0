Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C776185B
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 17:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD38C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 17:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681061465;
	bh=ErWB2WscVo1dzg5K5/6uKbNSyWNlFd5W4Dhqbyds2xs=;
	h=To:Subject:From:Date:From;
	b=qAHyv6u5AzZcz9TiSxxKhel1AyrS4y8uL32Qh4NPX8KHsLnFpA2RciffiSukaZemL
	 0iT1/brqgSGVEY8cX5txXC7cgSnOgAwkkBhZ9/11vcUm3pWCZ1ZJYZXVB4414p4ZGv
	 XM2iW0u96SfsAh28USFBIzB7jxRz8BkcE89N2K1dIe9OOgpja3wG8vxQzg6YvPTOKE
	 P4z580E/bcybgKuhitQLmz2c+DB4mTjpMLNhuZ166ZlBK8k6/74V/v2in087gFMLyl
	 NWmDPs69TM/vaaf83+lV/lr/qykij6BXJ+W0Nx6MqbpHRTPy8xkRd/5b7eZ5JviYmC
	 IMzW2euSuLSRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CE1C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 17:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168106146574.443.14366097431823730621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2cf7cdfbc36a5dbce1e4714d0836fdcf111d22498604b8b913ca4ed193f385
Date: Sun, 09 Apr 2023 17:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681061465
