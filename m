Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93D03FD4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A80DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669576254;
	bh=+9tetcIJlZ+vSCz/je6RZtr6oQL/57IDP7RuNbfzv2g=;
	h=To:Subject:From:Date:From;
	b=WWtnPKeWZdMUQkcqNgACXNO6FbYuTtxTVYdTtsJDAlF3WkNVqKK6UyVm6vLNQ5PLi
	 Pq8vyrUmk063UHDusnvPpeJYeKlpf9j5Zbq5LjGwAThKXnoJ5vh86CQi/8GZKtsDZl
	 kH9s/P2XIj11wipW36bywSOJva9F6StR2OVNk1toeWrJlUvGMragX77PcUHbXvAkZo
	 W8YyACFfYB2GZCvZ0zPYgCpOHnfAIgTceEFrMhyOQUjnL6WFSUVjqRrP/f869RFPM9
	 wv5PrO0qwYCA4ZPIHMYtSW0Akiwv5Dm48d10hbsGZWgPiZBYj4HNBUwKD3/rWroEFJ
	 rA4jHJXa39GiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6261FC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957625434.28918.4881415154298761820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd71c853176d6fa2356fe7329a18287fe568c332e0cfae173e7a3faaf593c773
Date: Sun, 27 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669576254
