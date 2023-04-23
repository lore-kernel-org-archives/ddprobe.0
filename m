Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40356815
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7F1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682239265;
	bh=IGE//et6KmPYHUTrnyUYk7GbKD+OVsmuYhHOAc3aXlM=;
	h=To:Subject:From:Date:From;
	b=lLR1rFccqtEiD5SdP88wZF+E7PMhkaqdYOSGIRS6smnw1sumxVrWltLTj+98MZ45j
	 Ew95RE9M5+4XXMbhmfUGpUiBFnnCZDTBwJtkhT+19EKdFQ/X81BxPr4PWyqk0uVr0x
	 AIcom8F5SSb3tN0g9f2MA/bxSv4QO4k0Gh97yurtzInVx5VlqaqJndAbKaer6znYLD
	 s5JfQeINX+BqzTaGxOr2QknHJpTSfXyMhCjPuVwj9zAJH6qMnH5+EVLygSZVwKs7to
	 hnREOBfqrH7t6J3ghXNYYCYa66aFDL0Oj6EnT/utf20vvU1ydc+9bgkDNHGNjUxa3L
	 lhWcqEmpbtyVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF039C77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168223926577.27129.3063660343199036270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4847f5cb9371c770c245480844e911c0cd29b524fb2418d06682ffcbac0176b3
Date: Sun, 23 Apr 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682239265
