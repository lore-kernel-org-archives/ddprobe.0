Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D80228E7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 15:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57FBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693323848;
	bh=FokOHdUxtU+RXBbtPgJAxBdJUPWcdU7BIEhgzmU9E/o=;
	h=To:Subject:From:Date:From;
	b=HX3Lz/CT/4GRBSd6gl2QatVsKxsJ4iJAzXfrDm7yQm7peZP17xDy+u+CVxJzsExmD
	 XxXCfyHmuMPSY/VjDSa4CTg4HcUYwcemD/KNWRL13WLBE0Voi70PsBzM+V0agaTaKe
	 efqBrnbiiaeP6I3UfZPH3lfenyy1qR9hWlUCfJM4XRMMKhANqpOwntymnqGbcfg2Ov
	 2xq5Qp0toK3g5gDPGTWWH0uj7d4MD72Eaj3dXUmJiQDPKOYqvBqBmKXQXF01ZA3uB0
	 NAjkaQhiccuL8sF54o8RVU0qOn392K+3EymM7ityN1XE88rzvRYjjbTwWJBaqHXguc
	 gYPsRkOf1UuOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0797C71153
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169332384870.757.14533788284269545316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0a83ac32771bbeb4f66132b7741b8abe813e4cad20dc4e9cf6f0fb0815a1d6
Date: Tue, 29 Aug 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693323848
