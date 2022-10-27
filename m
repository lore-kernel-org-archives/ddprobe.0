Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C584A7B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69578C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666907454;
	bh=2B0MPo8M2rk2T1bEdmOMWZYT5NflThh7zmC3vPKeoHw=;
	h=To:Subject:From:Date:From;
	b=E9uN1eHGq5kLs6kwfOijAVDHXOCobvJXjx/TSL44l1ej1PE296Rbex7aIrTv3HG3l
	 PYXO1MsjWag4jjlaN5v8VVmx5mt9eYPcuMl4cGbRBbnGSF/WkI7IoqyQu4pc21jJlt
	 figL4PedYHr0Bi8b8EKDSRdRI6piNqh/E32PEo+6y3q/U38EFdkSBeOAWXTYDPdHQ7
	 SrkstCCsqCfAenrSiI4e3PTEtWhyTHzTve5yg0PVbQAQ5nP0igI8xhT+F6tMBh8x98
	 LQBbZmMf6Gy+GII+gsTVPl1alsw6xKzg6LOhzBGyrUUhPpYCZuWkKpL1DvXZGn3aPl
	 gZ8sQ9Y/+Imbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5299AECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690745433.21841.4808470907501355749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c0431ea74637abff4ee78338dc840d724d7feeae1d892a8b8b1c6579b6e55f
Date: Thu, 27 Oct 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666907454
