Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5641847
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E11C433B8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688707628;
	bh=pAnJNm/KaUd6tbWXwtvDYY67KMt6b6bL7zUvQ3Do2TI=;
	h=To:Subject:From:Date:From;
	b=HuHY7vtvcCPeaJh9Runv64LQRGY0ZsfJPiMG58SkPr2tFvHdsPMjQG0sz1nlCyUwV
	 zo/M3UeLgDr/zRRt8PBF604427EwtLL4TAcd4W1cENDesA4pVtJX3nmtnHe8Oj2HaQ
	 PaWjaGOXvCxJgSLWN22EMinuaOd40J5Iz0f/mebnWJJ35pp0l67nOOPwbGfWN/c5fu
	 RhQS6j2rvSXVFPKg+2JGy9VBgZrLcrK0pBUkrThERbkmuy30qj8G3o4GYvj6OOk9ep
	 fKvZ9YvOPDn2mXt7/jW2SmsfYljrq17CAWudSgqT2v2KQl40I/zznJZGMJPv6MQMe6
	 j29Ltww+C2K1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A570DC0015E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870762867.16683.5059771023136902131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b4468431a97be5976c31e02f424b7bc1cf600ef8fc7ff4b56669c752bd261a
Date: Fri, 07 Jul 2023 05:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688707628
