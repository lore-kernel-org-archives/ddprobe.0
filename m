Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E719DA31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E93C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671415287;
	bh=kzXAmLVRoV/Gg/NXeO7A4c4DvLOuEl8B9aYP4KvllzQ=;
	h=To:Subject:From:Date:From;
	b=j9062hwRiko06WjaJLtCtccmaYq5DaNamQA9Bue5TJdiagrDZhk650xwM5/99L9/y
	 iOkUD1aLjk6H/bEItjVjHwLGRO+pXrKLosrYAUb+ZUzo7yODBHWtRrl7iJCy0yVa4L
	 Zf/fTmUi/axjbDTMkyar9Zpc6E/gZhAzW7U8yl15et+u0ODgAOtrhwdK43CDsK+90Z
	 kIZGa6flPk82RMPzId9Xp8JpyVZnDf4e6dyxxXClKLxa3W/zqWrMHW28QG+VQ7Hcl/
	 W+8OQ/1klLJL1+LVqxrid5aZIetF9uSePYWHQzfmJuzRVWyS4uMxn9n/vDGIJKlpwO
	 WGrTQpgIvsQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 774B1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141528747.17593.15613329830338955200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cee45b5e83651f9eee0b653d7c37a6d5f62916562f1fe0ad6aaadd4809435be
Date: Mon, 19 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671415287
