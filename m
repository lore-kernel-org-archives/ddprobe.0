Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678FAA20
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BA3AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683371286;
	bh=9jZz6hsE7u0zjGCY082xESrYi4fj/z7vj+K0tMi8qAc=;
	h=To:Subject:From:Date:From;
	b=O15hZicDsfNJ+mYEFBZHfViR5DOgWq2d57PH4AhtgXmzRmrWkg/Pa7rYdmeMYY/0b
	 05dPdp3QVDVlO4SFjHCMUPdnEiZkTaQaNuENaT6X6W+kzNnxEydpAEBpvstpKIeHja
	 8vk9DE+vVLSt2lm7QHtOjxqDDMDhM9pr4zFOfRPWdMTEWMPTm9YQXL87P4NVHrJ/jk
	 0xVJ33cmVwKX1mN6fUHVc7emE7PmYxw8CXato9ZqBkg2toBM+GPzMhUoyU6F/7hq8m
	 xBaM/KWQCbLu/1zRmnCi2eL2f01psJBDkEycGAPoKiDKuw8XCISaXbSjTzOq5hmyRB
	 iavYzTp0xv9TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFD8C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168337128589.18460.13608554711602430654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd482367e5e7b5670ecc1aafa267b65073762e38968c63207a58ba565b728b4
Date: Sat, 06 May 2023 11:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683371285
