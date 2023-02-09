Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35057748E
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 12:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68F0C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 12:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675945265;
	bh=ZCwB3rC29iaF24aO91VYcSHq9+vgdZznU3eBZSyCu38=;
	h=To:Subject:From:Date:From;
	b=O08OnPVYnqwxPhhGqBWH3wE3JOhtP3UJmPHEP0rgygTt42BL9Xv8nI1waee0p4tA6
	 qT0yM2xD091cwstrlb6iUy0pLIz1w86knAicku6mGD5OsEKpsuG1fYq7fAI1Y4OTiY
	 F7vL550Gd8zrzdpBHO/o2xrzbONX9vfzCG9nAZpTI35HkfuM+IgB5/iVTnQzHiSsh0
	 skEBjmk8Dvc5UEAFPbPCc5IfUIJwL7uiurmLgfB88buOcYLl1OLZZbexqIIDpuv0xX
	 4uChZaNHqvfznqYt+j+18r3wNJzfr5Yfe32nMsPeiiYFx/AbVhv2cvJmT9qiXGgTN7
	 0oyQc41NhF7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B861DC05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 12:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167594526574.16083.7833335923866049056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6697d29ed068725cc3d5b47f82e9a5974201651f3fac83035bce164624b32a
Date: Thu, 09 Feb 2023 12:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675945265
