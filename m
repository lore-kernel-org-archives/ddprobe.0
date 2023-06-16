Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF6579D3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD57BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686910148;
	bh=lKidPtySvNb0qZa7kOamr0RQ+5uJXOpNq8cgTqUVK70=;
	h=To:Subject:From:Date:From;
	b=hBTOTMkglOSahFZ/K2/P+TZ9RAadliXvArVWRnuX3QBmk06uxu3Hz9K/lN6mRll0W
	 laCvOd+PVzU7SVTbOMxnLlwgOKEX2tPJdp6b23syEvH/JXeW0yMaJF3QAXV1FMo6ZD
	 cfZpmCh5PvgUnTEe98qbnxvvEaJudlXRDOXHDvQsVBXV13N3odXP5h5i+lvwOEO6fd
	 xC3fB9RwAQIpzE10cs7ng4n2JbIMjZ3X+7ODLfTCbh9aGm8TJ3ajrT4SxF8PaFgjxQ
	 0FpB6Hq53hJ4KV7Bn/+qnbgcoLqNi74QGoJAscEsRG4Z54Ah38NhqqedE2c/S5R4EI
	 0b39sV6rS5y7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF70EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 10:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168691014870.14617.7018882454318366970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07822e8cb2dfb7f389283c32c91d236348e83099d989a06646e54332e099d72f
Date: Fri, 16 Jun 2023 10:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686910148
