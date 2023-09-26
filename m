Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417302AB34
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 20:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C240DC433C9
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 20:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695761108;
	bh=LayhbV57qZX4/R6/IE/6dOv/QhWrbvE7pMqXbPZ+yjs=;
	h=To:Subject:From:Date:From;
	b=qiAm9S1QPOThAWaWqqfY6NDcQJx/Woe42PAYFHprgEbx1j2POFO8juFYwoPhj77jQ
	 v6I0VbHqaZmyy49JRmYBGFh1irS4M+ZDxM9DuZVFv725TUg0UVkq07EhAAxO8oSRAe
	 ca8W9Tl/5vIT4JAecJbz2FU11k+fKBB3yhqLALBSR5Dhoz/LPGsY3SL4m0vQnlKqdZ
	 PM1a2Ehz/04cnS2Yg7gnlyE6MZMssbzUrC+xcpd8dYMFZ9NaD5yuXddnSWYTQSdJ09
	 0B1n1zOtomAtIYIIyhsk+2KtcA4HZhm3Qug3vVrtDl+SzMCKr88TnTFOg0UDKcFLTC
	 8Qjo9ZLcOXl/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D61E7F127
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 20:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169576110867.30536.15781152657655980714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21c3a63b4e9a0d787348fefcf87637f4e0705bb875b1c5dc38bfd01e06f61e5
Date: Tue, 26 Sep 2023 20:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695761108
