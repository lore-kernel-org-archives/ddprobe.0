Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3D01C28
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBDDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663029653;
	bh=zKngFIQ6zeBS5l5dE+QGLAqs4X14R32GiLSqBpwVNPE=;
	h=To:Subject:From:Date:From;
	b=C60nLLiHBXWWiqa2gc7oZ2u4cikPuE5wZcImsDG8hOJPYRup9S8812346ckmW5/yq
	 SL5ZZXNUXarh4qLJG3BRjKba3IHeaElIv3cY8takbc8SY3V7NAFJdGsWWD4Dl+L05W
	 b2pcN5p6/0bPmh33uyoZqw+FsI7Nyh8Gyj659UqJDfCpn9wcPyifLX49fIx95e5TiY
	 3lSJURpIEe6XSS7+q7Z53F+G70p3sScWyYXy+2sr+Rt4XdYjYgMcQW6paYoz8M60Bx
	 DLiAouGUjizaJr3gf7g0XVm7/8hAPv8gYX0KJwCNGUOJVmdDGyKqXfdlMMVCi11MAm
	 gj0shC/2UmPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54844C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302965333.14162.5179752767508664976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655029d8875d6219d93097ce1f31399c1591e33264e3eebe5611a0c91df81237
Date: Tue, 13 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663029653
