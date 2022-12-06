Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE42217F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 940E5C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670296854;
	bh=KtrMvgHiwfRh2K+Rm6rc4oS+3+WysyUCFCOk9HJKWpI=;
	h=To:Subject:From:Date:From;
	b=KK9mktFX73w89O+/Ztb123do/tJnDvgSC+avq96DVZXRecBGpafeW5pjZZ8hw9kGJ
	 QLofVd8b/zi0DkCvVkT4+TqkX2FBZES4HfNT/l1GVhr/gwOWY/afJIVqkHjcBtQiNw
	 mqvLrBoSo8+3cSGC5IWOb4CyoaFy9XRa+qzKgrfBnUBzlfwbPYiQBZozLEK/R1IG5g
	 AsEBoqT9wN/N20c19pkTPQ3VR0AYAPympLHK97K0pZl1MDt/bvQZL3JUNIRfExUJee
	 PaYq+ykHyJjD0ZY6/5xhKjkx2MEH9S7YW/BdWzN2CH6hHbjXa8vIyZUbWLSwqFzW1g
	 lNLt+h7/FZJcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77AB1C4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029685447.8613.16828305479488498287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755b0b09c9d198986a89c8c01f33e1fe2241414902e78eb204505648497140be
Date: Tue, 06 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670296854
