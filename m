Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB11B20F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C20EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671900687;
	bh=8ZUPy6LH0ulQeNWcYR24/QwFah5wt1HrZuvaCskOCWo=;
	h=To:Subject:From:Date:From;
	b=RrIjGrQYPnzPAahEl3sd1jdpUXjIyFFe9Pn62oqS/VhbsGKAx1R0xl1GSqz/NXZId
	 aEljeNKb8hgenYAh1zlM5AzjoPknQTztn+l4SfwfiMxHQdudB3nwdjT7elOkAgL8i2
	 2EIOinqWqfBCMApNg2x9hnu+1+7KkV1nupVhWbtEq302jvfPUnOA/UI63TVurXUFyK
	 S6FZvvgMeMJ1qtx96LDrkTttFCffdPYzbueEHC1g2fHtNVqg3NdMPqIhG6BOfP1o0h
	 RbcukNJbtbRgcAJ6QviPUa8/LuxAAhE6SMGQTDD/31GZMwV/sAZIjJ+zQp8spmoic/
	 cwkqA9nBmfgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67988C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190068741.11536.7065549727720121816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e479e2f0a59f77682953d07dfc86bd1dbefa19f3462e9253b5e985054db1dbc
Date: Sat, 24 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671900687
