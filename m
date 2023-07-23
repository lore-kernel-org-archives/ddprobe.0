Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C5227F3B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 15:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E3BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690127528;
	bh=2DB/GJR6cCCVfDzf4Vr0hEeJm6Y6iv8gM+Je7x82DgM=;
	h=To:Subject:From:Date:From;
	b=kxURiEWrebNSowtl3A/FJl+3X904licA97amOxTlx+oZoQ6Du4tFVi45pAAaU08hz
	 aR8/mHhE7Pxld/Q7tgFQSHgIEH6sfrbti9HzBrNoyubfDEMEJ02Tu6/GrIKUe7fdea
	 MuY9OMQ6ZTFGuR/BCUPKwncXy17golyCgWT7kesx5lq187tGhEOOdn1Ng3j2xt31gF
	 SY6l7a4YMVJ8T7Il7nLW56Dwn4OW6fM3qBMSW0gLkL5f4gKwrXNGzY7eIb9B/HMPwe
	 7iKsRNT6pR0PrSJAtZJwd9WspBcXWBtB4PTvt3Dc7jFBCoAp9B23C9tElIg8wgE+iY
	 nqx5///NmqndA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC15C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169012752869.16111.12268977605143824639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c20664ae95e37cdd9b342495545eea969616d61a1e7a0ef0cb465f26d6256f
Date: Sun, 23 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690127528
