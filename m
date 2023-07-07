Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72AD27F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8C0C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688693828;
	bh=gFjSLMQhk8bTqoh3uXB3HWURNb1LF1X9NeKti3TU/Ec=;
	h=To:Subject:From:Date:From;
	b=P8XtccURiYENvjoX0iyN++kJTpYDunyYJW535cNoEgqbiaawRKIKBX+V2bh5UGJ06
	 dDENDuYRr02lG54LSmP155/rd+Y4K5Jvf42Y5PIovMRS6oWuLbULd1ULR7wuw9gzS9
	 gb2h/QM3r6PMXemtxyjQB6qxG8wCNvgZR+QsLNyNP8+AS36dGRJi/wJZDxpOlTP1xW
	 sy4r7E5sbnKBJZg82PauP6IW496Ey9Nguqr/U8+eN8ehH5ye0+H44eVAUWXQ42JYHD
	 Y+wRTClMQ4NHot9K6XLOyGE+U0noVf/ZhS3EBuPDGvgtNRlNyO56SWvL3UIlHEP5j/
	 kmVzVUwC46MeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67C8EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869382873.12653.15539071805994675801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21f93d30f16688218766c67828d908fe3b5c76b8c7bf2eb3d95e06820b5d107
Date: Fri, 07 Jul 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688693828
