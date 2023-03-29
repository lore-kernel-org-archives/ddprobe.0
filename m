Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4218B1102
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 06:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12AEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 06:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680072305;
	bh=iNQFnZnfwUPtGII0/ZwjJf3Q5sSNTERQJ6v8/Y20So0=;
	h=To:Subject:From:Date:From;
	b=RH4doVVkoYvsw5TPiVxL4k3gfgM2tMXltySpnRxJOITmFjOX3RmXlKBJiokJ3SIIR
	 mU7YEcw5E/YPN0rypb6yvIXu7hgDwl1QOu/M8XcMd9L/3au5zTSwoR6mmIs/RXJks6
	 q2FPiO8rY8VousYUEIGgKHY9hG3hh+x4CR9ebae9FyHXoFytP9+7y9cKLoxIicfXrH
	 dX06IG5WscFfCoSZRedkEgHQMP42Fhn44JPxZOmiGxdb1u6AJCqiwT2vfCrPtDIKAe
	 FK5rbz5scDhfCdQe67Tj5xZxBYydx/549VSi+25+xinkjCGIZzg9aA5WfqkST646ct
	 tSFDXUEdMsrMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7922C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 06:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168007230580.29113.17975674731409347924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c704914f41a7cf8595adb7aff9c9790e19246b063dcf94b143cebf9b2e0c72b
Date: Wed, 29 Mar 2023 06:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680072305
