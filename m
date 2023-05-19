Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F831119C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 20:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC6C2C4339B
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 20:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684526886;
	bh=amcFXjMVcwJz6u2g/0DnDtvmuayz9vKEnYLPDWVdZu4=;
	h=To:Subject:From:Date:From;
	b=DiE+dSJimHkjsyhoSMFbYbbTqP7NvdPDf8v/cJMqFqPV7KOSpx04SQcbpAMCvo+hH
	 LK1B/6Hh7DtiWPjDO6UqdiHSZCJcKkytf/FDXReEoJhjV5gp77nhnrrg6dM9Xr/WWV
	 OCuk7m4fygW1VAyLo3Gfsi4FodHWV9mtzw+8gvz/w54idzYw7g88ihZHN7eIGpL4K+
	 5Mp9Oeu6FuM1RCuVdfGhKQpBXH8rMTc+fnUoMOGJqLGo2/LVBedUwGL236U0EloGZo
	 soRcsu1x4YZNjCs811qk5nf4hyQmAhNF0wzXl+oSghSsvu7+gpxvZKV+DXxcNFAPNB
	 tJUidGAPIO/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C167CC7EE26
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 20:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168452688577.17369.9673471048176897779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265435e6ed6fadfa3a17c2d155e81c95c96ecd5e826e00f2130f82715c93a533
Date: Fri, 19 May 2023 20:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684526885
