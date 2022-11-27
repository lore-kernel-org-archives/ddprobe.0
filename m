Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE81128E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71008C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669550454;
	bh=vmleXKQfebAElxTP4VVUvssMnjUzis5q6CvxI8pmMZU=;
	h=To:Subject:From:Date:From;
	b=FY4z20VC5JaVFVkBSH430wtUV0FeXyesx4SJbOmvqu3mGmh/ccjoc1Iip7erqwFl4
	 ErpatLmSp7k/rX+8Jb/v3t76Bojy7LIOLAGNT7ZftJutkfLlHhLn5eJWkAZTD3fROA
	 Xe8XyQ04YKyEMSWSsS8evjCbhkPe9voHuN8WteL9ZtUriFbSdSm6DZmIH6u/KEKBjl
	 HP526L/9Ht2r0mhvRZs521LlhaZF9Ea0/pCbZRzk7+e+nx9u3rCBxOGkcNeTkFUJ2L
	 Yow/RzA0EE/3WUrry94dKVKCUlrMKbC6PRqNMkZ9ONejjpgOjTvNr4RamRBPj8UoQ7
	 wYVVrCSjwJJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E53C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955045432.3186.317499558234819468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10378077b537ee2b7c2ac849287f33284d3ef075fcc92e94a650070371ff17fc
Date: Sun, 27 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669550454
