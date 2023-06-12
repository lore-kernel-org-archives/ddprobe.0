Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76674523E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD429C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686597905;
	bh=TutdwUGZK10LRlZFQYub+SRT/x72CukRiV4grblxsJo=;
	h=To:Subject:From:Date:From;
	b=uR6VQmvKslU/lfb0SLNGsTKcQ6pddDVrskT1J236sUZGMX+1+Kgqys5rkfue4Uhlv
	 7j4dcDLk9lCnq+bAGywFcvIhLqJwYZOVKGVwFLmOoXRqhHDO6FGin3iETLBSjdO6x+
	 MEgwljKee7TKc2jArb0X5jbqXXNIx98KTyyFzWhGU+j08Mlj/LlKAj8I4m7McA3PsK
	 LGczxL6cOTprEVj/XmYOwZj7jwbPMSVpZGWM1w20AwPDROvuEIb3vfZkGFbylXXwdO
	 zj6bvw9HQn3yow4VowaRUafDjEHqwPQpagNQjMpCEXkEEn5mG8/iSFp0x0urcHnM4K
	 Co3Mje7dszQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2AEC7EE43
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659790575.4241.9240825065947537254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ebafd8e6ebab6a9c326ee59c702aee88eca72a4f086467f7fbf4207dc89a35
Date: Mon, 12 Jun 2023 19:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686597905
