Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D3F28F2
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A1BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662984053;
	bh=yiPctNJVmTaWXIpt7p5v7bXsF7JR5nidclS8Pu8M8eg=;
	h=To:Subject:From:Date:From;
	b=WTDZtXcZhelD8cZeRgRxNqZfOk/zFJrZLWLDzboYuTEtcGiQ5xqG5sayfsbJ6vQOE
	 EocqBNTBMMutzJG3Fqa93VK0xM+iImTAR+pZpmOvSr2bDW4nWYnK4pi188iYRCE7CI
	 9kOIpQLjEzIkQk/061kx3cacYIEJNhlueeATah3vWAShZ6vy0BTNAcGNoIXOIxxfvl
	 NsBmmJvMOslnAAa1T7sd3he+uMTyjQNGZDw/wgKqCuvzHs7OXVwdORIeB9Ns/r34fj
	 2b3lUION7Uaos012oGa4Xz0iMB4dP+U5TSXqMmKTCPwUFjldvp2BAUnCQuSTU0VwAu
	 7aiKvZoA6PQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5490DECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298405333.7451.8588316149452439334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e110f0055469f16ad4aa321d7c0279aad1d8a7e1d5e4c8a899b9e556339b31e
Date: Mon, 12 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662984053
