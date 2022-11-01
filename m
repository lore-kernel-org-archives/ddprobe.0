Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCBD2112
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2F0C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667314854;
	bh=rXSDWJWqza6uZm0N+jMMTXC9Sm5yp1YewhXQa28jwi8=;
	h=To:Subject:From:Date:From;
	b=jIwlLyp8LacmEeX6omd2JA9uHcGBHZzF5xe3Mod07jGLwkkBE+/WG5jIPSeLhuZhz
	 1ypstIdT/z/nkDjU58xQLqsU4y0jtM7Q8uGe1kegpUxnWY1l9/4N6G93f6dXmqkZ/C
	 VXmMB2JXMcuEaw1TLIkci/7D95GzKv/izrFd00EyPOGc0Ek+nMQN42l5D2dDIsmSyW
	 J8KVYIytlMFYWQBj4tZYnSLGV8+wSlbBlsq9rS66leALg/QpYKz5Tncs2r1fco/Inh
	 s56hsjuwXuvHSaRvNfhCizsUDCP6esJdsBeXpF+oB+Fyi+yaqsC1SknaMce9/AwxkS
	 CALR+4IW+zwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F05EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731485431.9473.5207825548549008230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cc380e0066d20b37285813bb99cd6268d69b49997e83ab25aaffb5efac290d
Date: Tue, 01 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667314854
