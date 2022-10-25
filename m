Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C345B7E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9C7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666659653;
	bh=jf4cKotlQLOpisN0+LSNsyfHQnQL+Fep2vrvPFjz1A0=;
	h=To:Subject:From:Date:From;
	b=KE+CKmraBCRM9/rnqL4J3UoQVdxACeq5hLpWPgDgPU+WGFuLK17NnzGz3+k/0i+rM
	 fVV9lSd3T68PHD08putQysbuSSscIfcQx06Ra/m8oiA6i2zGdXVD4xVWvfqCNEiHI4
	 vQVgpud/2qMscysY3w0idMvwa69jPRbAlpVYINXeU0sN/QtyJwVD5c8MQfFEx/zZwt
	 sE2ubyNhacUzTbac6fcVuQrSGEw2WTanSyVo7D9ULJgn3x/4EYkfo6GIccRB/vuDb9
	 B725NNozwK6HyVlBYbDxkdTNnV7cdc0JHmQHZJZzvz5IAQEA0eLzCmUOFLsF8DQMr3
	 lttEZQleOwxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577F0C67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665965333.22979.462371429073558114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de282b7064deaef90a2bfdb8b6c0861ff8e91bf1f776e72e3ffcf56dc1937dda
Date: Tue, 25 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666659653
