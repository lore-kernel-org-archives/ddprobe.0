Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B123994A
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 18:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssPrfw5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC129C433C9
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697047628;
	bh=cAVFosyuSjyzbqsI4duQu4LqE0pma4rMMRfnzvCh4l0=;
	h=To:Subject:From:Date:From;
	b=ssPrfw5zxgl1EnOPlsSe6EQ+5ywtCJ20mopM4aq/uzX61gUfKeSD1s9U7ysgXum7W
	 KY53At+xrime2V0wS+xXoZCdDQvC5Rs/uySrKWOURWKt9brRrGCWfpERoe9VzW/tZz
	 29Pn6cfiNlHDf3QKMjGJq/mBWuzHEUdHVQjSoezFbRJRPcXzwZQO9uhdGarVpA9Pjp
	 261Ve9olXpJf5SxAHuSiJEQQuFDDrGAspx8MlpQ5EC3ZxXxjbjLu0cnpLnpl3QPVQS
	 5EkDsPgk80NroGn3csAgzU7tzZhYI2TyDUzAH0ryacY1DHzKRBwnrTJmIqjygcHd2z
	 j8FljwX0JttVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE240CDB473
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169704762870.21345.5970676219913715797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570d5088de398cd9cf2d357638ecba2164241d45b784419cc8211cbe0b5ba724
Date: Wed, 11 Oct 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697047628
