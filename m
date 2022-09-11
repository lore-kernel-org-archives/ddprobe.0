Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9EF7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759D2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662865253;
	bh=5vTvzFsQPLJiZ0o4vlVsuZukPFlXpF095hgfD4bK/ac=;
	h=To:Subject:From:Date:From;
	b=gEYuNK186g2lHVfzlAT8X6vTS5QGueeYseNdBiUWIiTZAjqWrJ61HZj2w5+J19BEb
	 7cYm/H7lv+XUjRCZzGUIOzWwV6/ipWcfHEKu5Xn3aj7uW/5U0gYqlOU/0jdGnRYVRm
	 QYpzn4ls9pIOvO3kCkT+I/kCwv3DWcTTZjuAfyXoNEPACEaU5kUrEbVL10neRJQJfP
	 3b9fTRCBoZx+Uq25vy1MGbQwy47qPfmJva9r8ohlg63THTg4URFaVWDb6vSZsqGI4N
	 iP4hbbePbPOJKnLRM9hWlUhfb4n2/BtiIMLXxYPvk9uwsfrSWCioH/Zo5CySSF3DBH
	 LS45QisirceyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584C7ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286525332.25852.4332435422357459916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78286cb6d368df877bf8aa1e3536ff97bb6036ec24ff4f054fab8db42a5fc86c
Date: Sun, 11 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662865253
