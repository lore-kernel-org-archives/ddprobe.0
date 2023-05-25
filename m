Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB23D7C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 16:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5701C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 16:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685033705;
	bh=hpOltFXhwbkAHzRJEfCfMntnhNdzObAfxY+qWQ5MwA0=;
	h=To:Subject:From:Date:From;
	b=og5u8dMGlHy6NjTjTLTdCVcl4ufk3/Qy6GqVtQjwtBF2LHavUY/nuTAoFBtwEGd4N
	 5walzerfMJupcfHnRhn9llfiIT9TZ1cWtM3lV5i3RhOei7zdUAuQnd37eqjyLQoeew
	 S+QhFVcD393oXgDIWHY88Rry+/r4yJ/DOR2BilaUfo65/Njw7jtO7/eWl3MzGvUpCf
	 e6q5A6jhpYloV170iwQYkrjEf8/lTsNrdy0CRE/zLOE8dvncsYcQCgYdmo51Jqb/D0
	 aFTNAYtbB6Lqsxs/8WBKn2k/OY7vuJ+kFfEV33U/kp6RAxtTpWIJ4KIdc180iZZbp7
	 5qx1IgDfTmHmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2B7C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 16:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168503370576.24712.15102682611060018919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bb6bac4e60e3567ba93fb55d6fbaeff1d129dd09b34ab1b1f95adb317bac38
Date: Thu, 25 May 2023 16:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685033705
