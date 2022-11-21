Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54BFECD
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F0DC433B5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669032054;
	bh=IvVTRLuItPtkEPJrWZIFT6MpRllt3755ojXb5lrPVmE=;
	h=To:Subject:From:Date:From;
	b=eehRHae1u/aEeqV8yoFeqA+Nk34Egjzz3J9EJmJyYZ4DppB1tFlmR2p5no56ZxC/U
	 6s+/eLnBxuYr6nCP8fPBGJpN84LRNTnZpDemZSfTJtYUytH4mMY4I+roJEDcQaV5zQ
	 TQzctljQtU+Wx4bPwinoH5x4hxHMaVxOVW76Sl+H7e+UVSgyNY5GvtWGo0jN3ugfZb
	 ymylvadkt/W5m3aSYkh8w2MJAnB/ZhuSPEPKhRJrNDKzykWVF8KKn5DjuLjaf+xvnR
	 HIwsl8L/8ulZSD4r6mbvm+eUAM6ecoXzPTonFQcpREMp49+XZAebGbMRBNPrKwFWBr
	 fFcay0Ym/GMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66627C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903205440.13270.11036335981450334335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19fbe942e2497032a208905330f86c8acb7e0d0d84aefb12f41e94efef8b600
Date: Mon, 21 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669032054
