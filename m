Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307B77C
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B8DC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678265465;
	bh=GLGQezigNl+VNCTRModyIpZcNV7PWjtmR9ZoqANsieE=;
	h=To:Subject:From:Date:From;
	b=ngzHGxW7x/KQWULyYY6t2vPiinvWw/p/n7Rz5kt6vU2oxfGLjiKxVTyDYqY7fhY1v
	 tvUUXJ+c7TH7TxARS+Jb2eSPaAPQPiKfpgKqOMPnHn6FFdrLnu/1VCPvlkkirGKcme
	 uV3cCA21YLI19hPVDbHaKfrv6+sTIdpBOPkdqta13w6s5nzBYP64mBPMmkW9NvgkF3
	 RzoYMLINJLuYttr/KCP2PEr+o4NNHV60LNJpIC/dilz0O4sgFRbIpS6jqwvT/NWSfH
	 HrbB3niEpBu4hNT3ex7b3d6SHBAqRALDsjnvYmBIpISROa6XhWLzFN/N4RDK+QovNT
	 ehfn8uIOVA5Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B928EC64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167826546574.7181.214230868185869421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f37d6b82e4ef3f7d6381155bc3ff705c8bea58289ec63d800e5b1ce6d0637a8
Date: Wed, 08 Mar 2023 08:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678265465
