Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D962B544
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9E8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692723248;
	bh=boWSKMfTiw3g3hQDgRij+CCbVyojMlZBm2hwVa9dTh4=;
	h=To:Subject:From:Date:From;
	b=SpYbx1mkId2aOjCwxdW7lwnEuJVm/5P1FBoR4fnAKmrjdAcP5aVmU1m+ssQSd3pjx
	 JiA6vK2hxvY6y1cRLTEu07zgjMJwCr5KImOuP//iLEHTqq7BTAZBgaedP7QWftb2gB
	 fkNuUrnU748N77nDMKDAWtlFFaaTf+n56fa4A3uQk0jyrP0ZWJczAUu12uSComqUaU
	 qtV+ihgCgOIiVu2nQhJn/fsw7e2+smlq+poyfLNg0xTHOyDIEx3CGqxinuYf+okqBJ
	 usZ7jB3shiW4wPRlvtU02QS8ldZ41dByGpXEtKV2gYvM4Q/SownTgb3rHuprHQMfMs
	 +wa6CTtKRaF7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3069EE4996
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169272324872.8196.8647093585959540000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917d953786ae07c7cb4e02f5252a53f2ea73c623305a17c11933e1fbb7e22e6a
Date: Tue, 22 Aug 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692723248
