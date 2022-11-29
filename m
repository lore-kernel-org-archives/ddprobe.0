Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFD1290B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DA8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669725654;
	bh=s8LY3u8VYiKkRjFl6ijGReJqti/qjt41XPW1D+tLEN0=;
	h=To:Subject:From:Date:From;
	b=O9x5zFqKmzd7vw9Gu5wfGolVc3lVrJI2X76/fyAUANbqQ6FEy439RqpniY4gLps35
	 bX1Vglg0u1vsyY/uB9u/1SRL9XbxZOxvgXLkYDddCKkmngSYj6u2HkVF3mo+voOIK9
	 +hZiQBSup4kTz1+PZbkxN901KHTO2cGI7kOR0Jia69AW27l+3MMfS7Cpb8X9D2CzNb
	 +DVAWi/0OfGhRMoSjX22POeTJP8QTpYOSSed6wsemacF8AkX84Ahx2rIytpDVjvGdz
	 5nmRuBXD9sYnlQNGsVLYHA7QuEgGcQin7o31fjSThJ5OEktHEHXVcR+rhexk8MvbGF
	 0RLxCnI08zeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53450C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972565433.20878.6836409919349209455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b93873a6f6fa385f3185fe16c3be666346221ffbf94f8fe4c4620991daf728
Date: Tue, 29 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669725654
