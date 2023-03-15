Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B50C193
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 23:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7167C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 23:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678921805;
	bh=rTvW2CW23FbZ5ey+W/ttzfoPxfHatQ1V0fQMEcewImE=;
	h=To:Subject:From:Date:From;
	b=J/EtwTadFyP2Cz+4vMtS7DEoj6yweFsBaX+UlAmj1CaCslWzmtzip6FfeDcoEVjNl
	 khJWR0Zk7YuR+4Jb7KBB6OVEzM7zVY1G235qPsFT3tawDMKWRYQ+gNih9QgZ9sBmqE
	 hCCK1Lc1+IhElxjfeaqduLxWrRKAb/fsrmVSelyyTSMba+0L15lWIOhLPbuADem4jV
	 2cUJaJQjRiFrsEfkLybFZW9qw5dlMwVQnsVnC8ukhM7KinU81xrAKFelNqOom3KRdT
	 LiG9Y+1QyaAUwe2KhrndvKc9kdUyarsOEYNVkrrAPWaEioejjVcgkj1kZTWTiYcshC
	 rRhM4XX6D1K9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE2C4C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 23:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167892180583.23018.9759231542078844417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b748ac4fadd51e27170f1ec543f76812174354a02d19f4bd11e82a7c9500c2ea
Date: Wed, 15 Mar 2023 23:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678921805
