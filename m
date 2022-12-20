Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AD91FA1
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7DAC43396
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671494487;
	bh=cT4PRmIaFNOFKj3viPt4q67thLncxp1hjWGWltqbOCY=;
	h=To:Subject:From:Date:From;
	b=jLpNGvlLIZxlMSq/nfc2kFGOyQ9UUWKSOg+A7PlbHByR7PmrqWuhb2ZNByM2gAvar
	 EZevdK5mbdwtbuu9UhFplDezTrtW02IkKMTDUObCJCABzjaVmpcKmWjc3ja3klalQJ
	 ZtOXqWBi+BayDr835MJTaNU54RGYeHUdl5I8UROgri9Kh13BGjVDby4cKTNsEOGwol
	 Wc8dkjXNQxGqG+wNfAGIt3Vs4IxVGqI7CR7BQSMRrjRgzC6b2DA0VoooICVDwto8Hz
	 knvBnfWcERuDDqaigzZIHsoStmkCvZgP9QsG5zeUtSe0WLGV9HGlUXXEau2C2aNch4
	 G2e3VU1rcalDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A73C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149448738.7084.5486396404856409748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5c688f5ada83e02c2e975cf6ff332ce7ed2a22116977ac37c4875cf38c4ea3
Date: Tue, 20 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671494487
