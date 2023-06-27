Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C7CEDA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA765C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687842188;
	bh=9ZXgyJ4s5O6gjQSQURuHNyCLHpGEeOMBGe4SgLsIeHc=;
	h=To:Subject:From:Date:From;
	b=XalqagjyisCTO8C2Tj7XYAQ+4eQNePSQOMv2ng0k3Ebli++xVAkCFvJo2CRMbs2ad
	 N908SFJp6mk8ZcQzBRMgRDhUMUl7sPBq+hiy2ltu8HLVzkmazzvrLfUbA9fvivZk24
	 7oKu3osGEqHw3NsTAf8syXqhUc4AdyFKvXziDkSygscd+fY9oSKrxHKKjpU3ZG3yt3
	 ZtMBopN6wl7UB8dQSsUBOiv7gUsYSKlJfIqXnYzFASNCZ6O4UdYZLKuSjjhrPnAZ/6
	 kwxcmUObYS+dB0NBGoTt6ADuguLj1bG7z3EXuepvmNWzV3PSVo6CYejuSZ/eoizfeZ
	 X9lsZxPPH4OGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A8EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784218870.28136.9502851661985486673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b120740987d8e1b3a7390ca3cc1b4bc2aaed54d8c9d8f90902214668e5ceee9
Date: Tue, 27 Jun 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687842188
