Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523FE14AAF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 20:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D029EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693341848;
	bh=rhkh1MXeCawE2AY9Z30HNzXUWpFx7V3GBwKhs0L1IzE=;
	h=To:Subject:From:Date:From;
	b=laRESDmuEmmUeb9FBnenX7BUf+EV7UKV++8MVyzRIfQdyGRBWpHi7ca96uxvRqUK/
	 /3A8u1C4yIl4w+B73JjDawqIHQBTg5jFZWegnmfzA/loXSj4utdLn1DkSJtWaZCIvH
	 iDu6KSXaBRuf8pIdMdKvH9tk05w5Y6tfw0rD8vL4j23m6hm8xqHZ5RdrbcUH1WyA9c
	 dOjmeS7DlBf5apHsESwk5eAuFkKOGuEQl6yC7HTMF3wJOy40ULNhsPSXAyD+m/gkRX
	 So7MzlR3yzCJS2Myq+L0OLB7MhGN8ikA/AynH55E0ayeKHgVpmX6nxfBzMvA0QDnZl
	 e5SYtmpgpC+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB14C83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334184867.14772.16007326711302847765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a243f12b245fb0b3080be8d349d11976253b45b90634b350c77d3efbc9ef2e3
Date: Tue, 29 Aug 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693341848
