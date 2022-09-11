Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89687F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC8FC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662922853;
	bh=M5F8gU/gX5a8eVk54dLS/Lx+UWhPpHVr/1EK6c15upo=;
	h=To:Subject:From:Date:From;
	b=DLJb3tc3LiSjyLWIQdXStYJQKvCiqwdfvWSQloMne9NIHG5gXXNN2kXoK9GBcpM5x
	 vuKlP9QcXi9WYi2Kg7Ycyy9v7L3uFFqp4F5eQkdQXr2VGWwU8AD2MaGxErcVIadwz5
	 Ow6UnhkouAtjMa4Q9NXrWgjMF9zo4/7KqJ+FjSLriKi4bFj2h8+QoG0Q9bDbCIfOxs
	 An99SgOoYOU+PPmDhi5MQaPACT2M7yQDSJmwYag0QSS1K4KNKCeFVgBur+hNVfLR4L
	 v4yvSEA/9w1f/uJd94ij2/Ydbc/qKEcErbiVp+MH65l7ncdg3X3g8XhNlB6IgbG74O
	 HkqVY4XeILThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508C3ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292285331.30429.12553798735508349233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e782f978cba925c20bf511a2676a3f54b0724d01d53bd8b2252ce369c2ab2478
Date: Sun, 11 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662922853
