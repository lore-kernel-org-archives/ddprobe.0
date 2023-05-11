Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5E2EC9
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 02:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB341C433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 02:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683770646;
	bh=2w2gGPLPdTNEfvEzttocz1UL0UO7O7n6T+xFYlYyx80=;
	h=To:Subject:From:Date:From;
	b=AEWjCJxosnraopBdfkZ8AyaG93eC2JVkRhbChiaGhrlIOTmlH1qr1WHXepT8ACJGJ
	 F1MWnBFhKh/Hmal5qx+TEmaKn+5UetIfDMRx6KCKBu/3XW9j8ZNSi+XnURaTXIY68H
	 XPZ0EfAodjaOdSMNk7rh0VAs9qy3kOn3NW2Z87agyELE4gdbvSGkZ7ioKO4RMWBFyV
	 OM6NrwABj1KBWHplhjxfpl7kYO3YS7bdRpjNsYHu1y/CnA+yZZf9lqALYfBOapQNPF
	 Dv958admypHZBOr7o1gwxriI8NzziNvBB984F8A+5QmSuFYje3oqFtTH84bKeIqdbd
	 GX5g6tiSt8wxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB237C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 02:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168377064582.18264.9400969270448310615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a92f3183eed4f5fa4f17dd750dacf57bf898874cc24ecf73db76f4cf3cbc45f
Date: Thu, 11 May 2023 02:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683770645
