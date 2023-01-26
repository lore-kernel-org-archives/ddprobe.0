Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503F8173
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA478C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674707586;
	bh=wHUvJ/iMNDwn729Hf7kNpf9MMhfP830fh4y8TFqA1Bg=;
	h=To:Subject:From:Date:From;
	b=i3yTAuQTa0K8bkiiZU+NbhDalrcGxlgZj8uOpPt6XDcF8/SkJdg6t+FW5b5pVHqOT
	 ED1Kw5FNeT3YFsN3tmgTVeHhpHygTKLK/p9AZl6eSbiCppBn/kIkj+ChKMJ/zHcjuC
	 Ne2rp+vXDM2dRVNVaX7ZsWrMJvdmdJtVH+yUR2I8DGGA/zmH8f1eK5vhAlthbtO/aJ
	 hzDnw6XfYjWpa8U91m8mFNRbYX66/icN5AjtRzeXaf/uInXfZpar5YkgShCFqnp0oV
	 +yRXnIZR9Jd1cxRn0S9alymlQNCF2uDrUlk89Y9pDf/PGke4ErzOrYcsWRWXGZawWE
	 yzQ/K1gWfd1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE469C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167470758580.12254.14289532637100783403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdfa0f29d96bb07f1b7853223356948e32416b7fdd075f23b28803e436d44f3
Date: Thu, 26 Jan 2023 04:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674707585
