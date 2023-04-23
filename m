Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448F2650
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD88BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682229065;
	bh=UpPvkD6Gkbh5bDM6IjsxJGT+UFSjQjy5bLxlWciePb0=;
	h=To:Subject:From:Date:From;
	b=o4yBx+pjP8e/E2HRfhQ7XjDP3nj8JKs9Vv51F7RVuJEFpDI9C1qxNbjRLWXD67SGL
	 ZZbpg8ylp2xNboWOSyD8ZAGim0ylEpMnB/6avZK3I5lkVObvr7MrIvFu/xr2rx47gD
	 NTsif7IzJpMDriJzjsyyoyyXymxzd7dCtpuUcABGwg6nLFwZilMBPLUjmHZr9OgjY0
	 Xpk3O/bu+YmvpwwS+AzJUQURnUJvE2y/PVJW79b0v6LS/3FPaqpHM2FdKXfR0tYlv3
	 49xmqJzMbtkcgN7aUqPALxBi98fGg7DpZAb/dHtz85W8rfsOgjpfoWnAHluv8C92op
	 Nz94HW472jQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFACC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168222906577.20556.7131055592275449730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b499e0e5c2f43f6dad1d590c5750e4658242265efb8a087eaf4487a1b8435cba
Date: Sun, 23 Apr 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682229065
