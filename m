Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1754B1D53E
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4f3Wfvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2FEC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699390696;
	bh=voM0hDISg8yJZits/2022J1fUgWBVDgNmx6cSdomh04=;
	h=To:Subject:From:Date:From;
	b=l4f3WfvnN8bvXdYT7UnDtLxdePZwysEEbTTQIL+bHuBKI5C86nbnOC4koSDLoCMeg
	 +Dmmkk2v9ecjgScOct3F5vIUOeJYFHXCX1wGXoLV9m1qiMyBSprSUku6AdAkZhufcy
	 0EHqQIpRQeuV+myIs5F/lXlhFBPZZRlgLH8ZisWDQd03mdBGfryMp8SshE3ZP0ubsM
	 E1mZIjv32gp9orkUnLOzQ8zo96tvy+NQOO+90sQJrTD50TdoS5koRG5HXvyu4ahfmZ
	 jZtbxSnwvcmWw8zu9+NP3tfvi6/1xmeitGdEzRTBN8WsbUboWHAuGt5Jv8TlfZKr+w
	 e42i37IZzQ56g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657A4C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169939069640.19239.696687575447881521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5e4b9cacfa0c9d3bc88eaad75d3cdabc9d0c42443bc94c504873424babbbb6
Date: Tue, 07 Nov 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699390696
