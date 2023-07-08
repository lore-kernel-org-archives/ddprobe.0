Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF951FD7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2FDEC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688820429;
	bh=HKAeSu+AjTRirbxnycZc8N7OG+tXATUBx/XnWxhceIU=;
	h=To:Subject:From:Date:From;
	b=nuN+7pfUFIm37Tg92NWofNIGbh9yCWaw54ir8sdp0S3JiGfiIANcdfAWv7Sh0IiN3
	 CmaRc6zyHTCYD8NL1RejKS6PtXnjeTNgZ29QXid20MgeV9RtE/+7fF6yaeuzCL/Ymf
	 X0seOfoH8iW+Z+9la1OsTurqDa6urvR8KVh217uhSWpId+q5W8XAYmHvYbYOoVAR9K
	 mcCqrHu9jGSG+RkKD/K1Mtn6vGIH1cogeSwvMiXptW6k/KH1UaOky4c7T0+J67sKc1
	 8PDQ6etLbNqb3bc78SE90scBWFO8eVl5AFqGrimxClGq0pIs85vr6nCnrtwMkE0m+j
	 /Pq8mMwYshkYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50CCEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882042871.25773.17868573607006204588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc509175870249b5c35a55b41966c761cb9d03321c84a9ec532393a8dc1f6dc
Date: Sat, 08 Jul 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688820428
