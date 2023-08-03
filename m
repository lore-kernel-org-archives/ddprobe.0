Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD7C7F
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDEAC433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691028728;
	bh=Kx+LufVkKFPHQDs5LrnSC+OKqI4ukRD7X2Q5bLQbGg4=;
	h=To:Subject:From:Date:From;
	b=Kmg3CEhyQ/+fjIXR0FVygQx79FL9UmaEdHtzOs5NIj6QNT3oXBvbgkRq8eLoBXNTG
	 53e/mAkH8j28LnIjJF6aiu+Ot3q29NM0MxeLLLxw2vLLz/0GG0CoX5HB8P+C/bC/1S
	 Uv4rFHUiwgP+V6+W2wIKwPESPjaGi3f4fHDO753nh4SgyVdiEpr5/hXH72oGYW4WT1
	 yBFSnYW24Ve9w/B33F7NpKnzNuLfaQ0xr72FyBwGqnBFm5OGOWf0rrvBmnNsvLUnRO
	 5UN55saIOSS3gLJK2N+m3cZtRgeV5eBfo+m3lQ+W2JMdZGCFSZq0cOUoxpk3mW28EJ
	 qXdiGa5GBJEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE2C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169102872869.18460.15327269164224681644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7b139d962d577bfbde48d53302a74cc0516f4e6a09d87c017176c49e8351ef
Date: Thu, 03 Aug 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691028728
