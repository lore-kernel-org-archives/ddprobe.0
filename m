Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF147E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 03:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C941BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 03:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692932648;
	bh=BgqvKsNdtRTECT94tKOv4uEvPS37309Bg7HIuLqsWfY=;
	h=To:Subject:From:Date:From;
	b=KaiD2zrKN3viSPkFBfXkgUyRw5TCnS+J5MXawCvM/Jv7HSBQ4ri4JzvwSfpxwqLZF
	 v34thfrfdjs+94zz43uzrt8LaMwCZiMBDkU0IuwDyZ5Za6rmrUbn8uXjFnPsPVIf+W
	 dAl/rLgl6JXJUZ491ce1wtDDlXNs5wAvKg8FTAjixF4Rol8gbdvnbipF1jxVq5H/c5
	 xEocKMb50N8glvsSvVnaipjGR82Rm8W5R74JDVPYIGLkouh1Fz3QI/wR2pRjsnV/Rk
	 K2veo9LErsSyl/uCbwwkowkm/o+B95nS2TROEMElBhW9U2omsecQqMjxV7vTI1hEos
	 XhBWb+HoPX8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD00AC6FA8F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 03:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293264870.22613.11843362585525865760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2145437abaa27d5a8487e5983f1713e9547cdb48cf6a9041acf5fc4e9f1267
Date: Fri, 25 Aug 2023 03:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692932648
