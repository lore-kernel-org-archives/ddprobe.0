Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48964DDA9
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 23:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E898CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 23:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683589805;
	bh=kUWEMIiAPaokeM0WzwS+dYWEh8GM2DajAfleCXtcZGE=;
	h=To:Subject:From:Date:From;
	b=qY7f47qIIBjiL55wluRwsHW9MZelQgI3DMz16xgGT4pWPK49o25kV62zLbjeUSZfw
	 6enIevFEHBgiGo/ejxrERMwnIXy4XlcVnmUrWXayAiBx6X2xLS+sgP3joWoakr0sB7
	 mH648wzt7R0DP7JP+o74teT287RBP8acY7LdUVq3WS8xN2Zbckoi6rYIFJXDYRyq1/
	 OITHKqQEwzGrDjqVADBFyy87Ac7zQwBPgBgILskcJePNBS2k8+5FmI0wuOrqon5vPv
	 TLrcnM3drA4WaT9moXV9l59ZWkeYlDZ54+scWoeofuySPhAtFdTligHGjljgCfTZg7
	 Mp6AH1QoVzwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CF9C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 23:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168358980579.21934.11327299897452120321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f28db774f903678e4a377427b726c190f80c463c8b789cccf3b2188dad2e02f
Date: Mon, 08 May 2023 23:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683589805
