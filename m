Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB9433CE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D4EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671820887;
	bh=218fnUzxqi71BedYGv5+azT7Y0UjAH5BZqSy26G4lRg=;
	h=To:Subject:From:Date:From;
	b=CCFVGp+iU+a5jYalaLmxAV9sAYUQzn/xTJqbVV4ztaP2BG/0WiUmxJpmhMaLVRDcR
	 WX89Op41SU+5OPIyuNOLEWWrA1gA21sWZdlHb0Lyv4/aPUh9geXlEtchdJYsDhZcHe
	 PzLEk4caNnW5viOfpweErJknGL4CCLwyxC2Ieo3Vgdb23wMeMyttXuCttqnMnLMBuZ
	 2O6y9MkTXxjwB+zk6GNHIi1A6PdMxnsU1WOPUHD6uO7V76w337ZAVwqoRxeSrcZFnf
	 uF8IF08icf+98hMnQXxCOh7Uy7/ZgDVFiwiDRfZxa3SVd5auFSn85Iy3XgGeuspusu
	 yg1lxh1GnteWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A794C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182088742.18638.16752669235213778164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f436c92963d7092e775060bff871269719d01a4cc64ec5facad6bc4c7b10d8c8
Date: Fri, 23 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671820887
