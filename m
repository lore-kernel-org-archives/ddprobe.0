Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C086915A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7212DC433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665462653;
	bh=oY07ADvXVeTbRuRy15q6R1YmLlfANRZ/2k0X/LZ2N+4=;
	h=To:Subject:From:Date:From;
	b=PU8YQNc3dL0L+xDWXUUWju7SQy/73tIhHhFi1424P2aBM1IndI5QTvHr5X601CsQW
	 Ph7NUcPr1G8AbYn0JEPyaFmEiCD7COCrQQibBE5NKMb/0VEjGODE8vSu91AwBnDBE1
	 g9H5XkBSxrMInTi6dlp1YHGhmPFY+5XvmSA9UX+RtIFGe9xkvMWCdLzZRXrNpDMx6w
	 AeBwTFm0fvt/Psr4AaI9UK37APfYXV0anciE4fTdz1fY3RBjCeG1ARI3ghh8jJ4ueJ
	 OhGCWGvpJxSN9JwNBuB06x9ElmEW/2sK9NTWDTexCPEMUAtUdPJ+Rgifv1JKz374Fa
	 xicKWa8mpuemg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567D8C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546265334.22399.2816071190657199385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4130830d321672c2d464b29459fd839d78095585a2a15e04316291685873609
Date: Tue, 11 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665462653
