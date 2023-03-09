Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B818C94E
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B26C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 22:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678400586;
	bh=dTD1jqqjGdWpX3gANd8xeMHJ7cHdWSxzxxT9V0EPKRw=;
	h=To:Subject:From:Date:From;
	b=aBs3pvx5sjQaHFcwjczAon7jEUNAL/JvWhtQhIe9sKiUk8Enfjm9AfxRzKJdk9fgT
	 zYopt+2J/9cqEVA0bAKElup5xCdAuBSAGhmPyfziz+TiY/EY/ni0mdvorCFx4dZjRq
	 e2CIDYE3c0mEy2jy7G1bqXJhx4MZNKZ3KZjpyLJTTLcZm3dKD1/GCzM3rWLheLEqKv
	 wNdg9wSRV5ugjeZuYy2hNqPo9K0RL8xBMgBOc+kbh6iiAFLEwd7w9t06fpoMLXnyV6
	 GLQZchSaFhyN/DYR83XKJMm3JxB+OSTVAs/5uyCatygUVa6ozUrjERY/Qza3XduUYP
	 gIM6nTR/IqLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FE3C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840058579.20784.2224552080533827231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67ce10d4a7df6436a5b8496d6f862aef2443b7fd43ae96beb7e4a3381373d29
Date: Thu, 09 Mar 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678400585
