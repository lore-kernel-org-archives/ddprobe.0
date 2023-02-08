Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3181F390
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 04:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C0CC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 04:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675829345;
	bh=N00fDsItDa/O5mbF+AbPjAdL5ansbMZBgVuVzZIksWw=;
	h=To:Subject:From:Date:From;
	b=F5fFPs4MwfUM2Wv7K+i/3Wk6Ezug4Ouloh85F8QLVzwi3U8dPUdO5esk4qZhRqXff
	 eitm8xosBMRmy1uRWI8Ufz7W210uKtt/sALA5aYCmlsFMrIcrlZ3BjVvm62/8CGjRC
	 PdOafziz9xBkDTOnvMvfMO2C/buMaOlFnW1RZidQcibN94pGGJOriVUttH/Th5hn5x
	 0BUMv/rB/YrwbxJDHdYXuHg+ZQMyLrKBYaaoxveoJZZ0MP5ulLK1e8RZ9RIuk4pU5s
	 IF3vx99YYA5PbmTVjcfU3pwyd6r0h5LN+CSM1ndBcQ/HRCglO8y6uFwQkbKh60H6aC
	 ZMtr1qAde2Wng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE844C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 04:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167582934576.23678.5175342706474171223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15345815e7625804e940fc723884d15304bb4763a8b7df291a5f33a93b8a6c51
Date: Wed, 08 Feb 2023 04:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675829345
