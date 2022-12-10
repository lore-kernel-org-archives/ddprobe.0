Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3CC2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 839AAC433F0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670708487;
	bh=RNe7qd0PWeK5yZfzHBDYbnp+oQNLDfErBhsce0T8wuk=;
	h=To:Subject:From:Date:From;
	b=GBF3Jj9Hj7DFHQhu7Ltr3I1bOYFU8NBlslgcoMzeng742d1fjTnZ2dliwT9/Rf4Bb
	 zz00SozZprdPhVnNkSVxMhx2SQjtQtsxFgdSXRNW+yWKMLGcBOQRZPaolgonZH9V5r
	 XlpqOOi0VkUwqX9f31i4QGVWGkFLr7zwvGk4uHSSvBv/+EgeeHij3XUQTb/sxaUZNX
	 W9DDba7rj1rztIGytk5TtPPNdyvdpjZRqlQ53cgx05jvGuMtn0OXRvqXBlz8rw9LF/
	 Z6oJfsdIazaEFHhZ5FHb8CsqugL91NttWu0ETG3rBOCqYrPgB6PrQgAOmPbPIozKcC
	 9EbbmNOvOWGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69160C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070848742.22568.10862310047274888892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26a133339dd0962276b719ecf56328ce0cdc50f27a6770068de38c10c84dc06
Date: Sat, 10 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670708487
