Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F2A7E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEBAC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664248853;
	bh=g9Pakd2QVvsMBz+0285ezcSy3gBaT/KWTil7PvwaoAo=;
	h=To:Subject:From:Date:From;
	b=KfcdCbUicQVslaLzQW6OPR7nMfZ4Lh7sXlsOw+NoE54mFyLJBdqhCh6gXv+Kcjxik
	 aPtdZHZ+odSdVOQRfBYLANdOvFg412iuARo3Hx8+3diezJR9RczO7dM69nMobgb5RZ
	 OWvA1e85VeMiJQId/GF2uZcZnIaMSAI5ptTTzt6JxTDqi9KDPJVpGkevNxbcmTZ9sA
	 RHAI21urqEMwSRwebx+W1lYUUYIBnp3F69nUYyiHJ/zuaLAOrukhBIbXl4U+BKq/Su
	 azNWwF0zEgZyTU0JtHIrakFRWfexDeidpW0+7PheYDU4KqOZkvgBNNkrzffI8WXMUU
	 IrptM8qwTMKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B90C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424885333.16481.139143104028825775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57430dca43d33a3105e8675c9b4c59e474d7f82a563370946f88adc41a25f8f5
Date: Tue, 27 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664248853
