Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DC07F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3838C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 07:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681458725;
	bh=PBPGnLNbYDsy+fCvSU0Xo3sS3xHwhBRQmuwJE+bbVzw=;
	h=To:Subject:From:Date:From;
	b=J3AZWf0sXvbCklsgoCgWzdvSJNDXnsUSgszm1xaI9/iI+NsKQi3lSifr/beoqpeTC
	 bgitOyEFeKW50Cuy/9COuWtdOP9WNRhWYWOpU7sfxHeDKKpfhymzGX0DNkPgV8ECY3
	 P1+7j4rAU60vng7E9dxKgvPovQXS1XLyNGoXe1LfKVowpzFPMuqKhUCC7sOUI4VYP/
	 8t7yzot0LzVEx59CW4fnPKMQJ+Y61qcLg9QxUpcaztzsBAdiWNfdc6AW7c9MxhQQN3
	 FW3AoWUjJ92fPIEr/YKqP4Rqgr1zggzEoirunDixZUTA4Xhk5zORddN6M+xit5+toA
	 0GzEeJLg3Af4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B759EC77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 07:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168145872574.30209.8085436285762786579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6cb5f59104abf44fe57c76726c525ddc0475189887b2185f4fa625c018fd57
Date: Fri, 14 Apr 2023 07:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681458725
