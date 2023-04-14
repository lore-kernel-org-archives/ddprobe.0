Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3879C7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDE1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681492385;
	bh=cQ8oSp8o9d8yL4UmnVr+1Se/sVYeuQ5W6eq1vO9Xyt8=;
	h=To:Subject:From:Date:From;
	b=HYo9lVmhkM0a9qwBP8g21CwASTwFwDeIQ6OAO8yvhybM90CwVyTmo6VURsMlBnL+E
	 XarnPe5Fjn68hviQ2R8Nb2bt3UOJC+y5UgYOA3Y7f2+m5ZaGCcsgGEZ5Ca7gKUxrcf
	 wV56m082PXTez78O1L1ui4QN5RkkTSPpObCKpqPOEXpWm+Y7gyfETO8wFjyqSe9amJ
	 C5TTnHFyi/TlzGJ0pWn0IurDp8ypovtNHOUHAfWrx08xFwBYunrT5iRlA1cRZ8+0eG
	 zdzlaDfpa/ePnU6nV9fs1MCT0zVftYCP0TK7h2zgkRB7XJErQ9IsHaOANCb0rYLV9+
	 uNVo4+uFpGdTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF46C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149238575.15814.5208137978196813832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af932c2fbeaeb9085e6b747dbcc8cdf75bf1066d0fa16914fc40484c06bff62
Date: Fri, 14 Apr 2023 17:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681492385
