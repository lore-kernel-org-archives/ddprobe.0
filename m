Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6760E14AA8
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66B8C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686240185;
	bh=VARic/E3BJnnokHM4h6Lc/7HDaMYEefi8Dq57tgmjCY=;
	h=To:Subject:From:Date:From;
	b=n+LPcWv6SxwmhgnAXNYh5MBgI229+WtkmDDYNnAX8ostwGwCP/FTma9TIPtNLAE3R
	 R/ZdupNnfIiR2FkhiV9V7dkEh/cabMCseWGISyweAy6fTzN4kjz4GDBTIo4zhhpLCO
	 JuWNTGr958oeCsDOZuJSwDgLhKNGqmy+qt94uqpwfwi5KCfolIwZrSyd6rydpbNOTI
	 hZKTOQitrzmHlgkJH0qarz1q1PJWWvZCvVIYFPUwfs4nbHckfQkT8Po5UUW26gvMpO
	 wdWeeunFpaExLCUz7j1fg3g73ujowBYLX5h3RdXcvgr6b2jdyNeey5iae/RNDcgvr1
	 ltS/0DN1VYnGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE60FC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624018577.5645.8061766095457043587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59648ab21188a6c0864d692bd67842f87fdf8783dd7954c570990107240579d
Date: Thu, 08 Jun 2023 16:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686240185
