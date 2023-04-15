Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B9733D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 17:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12D84C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 17:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681578846;
	bh=QDnZMM6PyjcRjpwigKW6JdaL7PA4bLN5zKKtUscFrjU=;
	h=To:Subject:From:Date:From;
	b=pd2gSC45lAMRX7+uxLptTbI/Nzs4J2YGDLZy133fYnug2//aBDgyVO8wyRC0O5uLB
	 +sagqyzW4A8p2iWBXSvpE0qHzhkQwJ+dq5TNOjGJmPczuW/n2C91fflv1/HRu7fAWQ
	 cHwAqSnLPW7AU2vrgc4lifnZCBntFO/DM4P9RwRzuTNk6kPMJ6rZmlDzv+FKxcnxT0
	 Uo3OXllxM+Ok/5hjePQ0atdXfK2HPAHPUkNuvfEm7cF96eCFHLG9C5pGxnOmkJ9LCZ
	 9SYYTffhZu2HXrwt7dtky7nmuKytude9iHCm9nRFKnBsnbn4gzl0Xd7lYwAMLMXIMZ
	 nzE4FodmOs86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4CC1C7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 17:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168157884587.19533.6855813927137148934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453a1f15c12ef50c30d316850c68b346046a019b5f554cf4fbb8a95eda8c78fe
Date: Sat, 15 Apr 2023 17:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681578845
