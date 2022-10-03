Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD7117C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68283C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664779853;
	bh=WNL7Mx7Zyj9u+6TD4BC0DwN32k3WNTp2mzYJ1ZdyMXM=;
	h=To:Subject:From:Date:From;
	b=KPSZGUhgt6L9TNuKflUPi5bd9LI1pOtvlGOHEFffWPVSTj6XzSZZX8cib48+rq+cY
	 WHkJ+voxBwuYVJyzudH46P2myTVvcu0JHB0m/6EU3A9IcG1AlY5hsAbw/g/udmZk1w
	 JGuedBZ9D25QatfrnyaiCQ2PskI5N2x6IzYsXih/nUPJorffdgalhJZPKh0FVooyf4
	 6NPYSt7yvfrHgavhb/xIDF1MytEft8ZbQWHayVCPJF4crFlIZjX/WcAJoEPIYD8Rdj
	 TmJXwPVwCYKV1UGCvhhV49+A300AIymnYYqV0zfROZWDOw8D/NRTsRjYp7IeLUdEeU
	 uSjItu1mRehbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CB5C4332F
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477985332.1078.8320134214138818623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7688ca7ea2a964a215603b34bbaa585a150f1fd93ca9e2d641473b2ef0c701
Date: Mon, 03 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664779853
