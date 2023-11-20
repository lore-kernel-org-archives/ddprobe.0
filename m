Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DA01D53F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvID88lN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84290C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700494096;
	bh=SIVyijQ8q7uq2lSeE20BcAMgsK93c07AgkuXS6UBkEc=;
	h=To:Subject:From:Date:From;
	b=kvID88lNpDXp8yNiZNq0xRGtjC0bAPFslp+67elxuibB5DHoqoTPbflo34eZJzcvQ
	 QD1UeNr2oST0Z/LKtLLbZ8/gFhG5ECWOD/9AeeB2FdHtSeYPuZ7LpgJBbCj1FWn6uA
	 WlfPd/73h8ObleeeSbQz7t8PhSe4+GIfcrKIfbh5FlHDBEUGKmdFDsqOUDcDPWOY46
	 wgO9W4C4YqypqnWcxY0w5EyNdBnwgVwy2loV5wbONymUyb4gtExPYZUlgFAVmB3eDJ
	 WXT28wzYRm3N8xwIZowdLx3zN562q+4RYZmN7b9qJv6ohl+IL6Qak0ohw3s56uCxFu
	 ohxfJeSFLqnVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C901C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170049409643.4564.15343089586746809756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce0ffa4fc1d755fe02961273cbab0ca36d1ba1fc1e2d132b02954d4a7e1d5c2
Date: Mon, 20 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700494096
