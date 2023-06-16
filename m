Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E78ED50C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E7DC433C9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686930548;
	bh=+dn+5dWXYCUqKwRnS9TP7JZWSdKQjRqVx3THK4zxakM=;
	h=To:Subject:From:Date:From;
	b=X2gf3duxFkFpG4ywQd9HJg9u+/5xGWM5CIDSgXoQl/+JJlDAX2y8mqpTYbts5hauE
	 lt1Jei5vswZMZtwl/B2jlRHbAstHafaL8n53P4yBInm3f3HCzbNHyhqL0F+Mx1Ke0N
	 tu/PJyaa8CoYne1ghu/pFBV6dQp/Y+cMEq2DS5fAzdnVGdcGT0vr7+BFgqDeKOlq80
	 06V9VgP906UD8IOJeIrnSwXL0tLx+ne5REDdq2V+pNJSKl7gHzGM2M3kjURyBpQiks
	 auHnubEz+6voCVDY679v5ZmeKt5Gt97BmvflDtTx+buuBwot2MMcLv7V4XaR6ou8Yx
	 kR6cwqrOMhxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DCCEB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693054874.26020.10835670536153948385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fd9aab0d70b2b9b390cefb038ad85070fad12be159a77c4a464c473e2c34e0
Date: Fri, 16 Jun 2023 15:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686930548
