Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CF7648
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7B8C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663482053;
	bh=LdxcvFZV9N62X2CXZKgsVQguzsVO7y5XxxuSOhXvuTI=;
	h=To:Subject:From:Date:From;
	b=ZSDOlBR2IkDK4Ho3To8u4UPcL6K8wPVIcP9P7obYvzDh0PCTQSwIu5pZi/Xq1Ku9e
	 YEPhuca4huO77Hh0X/TX11YUy8KMzreyhDZbfUb1obzqBSWR2IAZYQfk26/pXPH2eL
	 dSYWFg04Z2RYOM7Ld6C8jPgqs2sWBgLx3Qi6eDVVpP05p2zDGUV6QKNf/OERKL2L6r
	 tOG/vlvhhVytpe7TaTeHGzaiLa+pMU5S5hbKs/iUxbdpMeokeqtQkcRjayOfo09MfC
	 wmT2J158xx4cDx1Y+IickUG6YI4TlKcEjDJ8mVKhOMUd/4X8dNYGYXJBCyq45U3GKt
	 BHfwzLZYJM5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E85C6FA86
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348205333.17936.14480592809847513091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc7a55be4e7ea114f6d6a45703195f59c205484c2fe62ed79e90f7b315df814
Date: Sun, 18 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663482053
