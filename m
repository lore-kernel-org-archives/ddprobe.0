Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FEE620
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2B2C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671359487;
	bh=Hdzk2uklBw5YoI/sP4vLWvv+zyZ8tIsd8rCzXLoPxu8=;
	h=To:Subject:From:Date:From;
	b=mO9m0tbHzVJCjZU95cTdu3h9lDQjlsyKFnfx6BNoLuo+83RGuwIVe5fQmvk+YDSan
	 Rbm9wVCYOrg7BtiXe7xFuhJYMVq8/INRrTbywkCQMZU30tcl+fvRz4agIihCAUc/9p
	 l3Tw72ezw8twiz600dxzNqJL0ieAiVJk8tNMpcUTiovybnZoUwo9X1hgZE1OQ/7Rjm
	 BE0lMhiK6b8O5yILYm5y6eY+CUT216sLIGx4nMeOoJFBhlQro5kOLI95YJT9NgJhhW
	 dKXDGQWJWDDIzAON5ZGRCbofdwpwuYovmQtlxnwb6qM4EMlen2fs1zVFpgUNt1vfXx
	 IuInBd94DWSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE40C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135948744.15340.11492486425823841046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d497075eacba32992bb50d69d1432fff87b191d4e23f4bb16fd0041ae399b750
Date: Sun, 18 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671359487
