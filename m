Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71570134A7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3D9C433C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688578628;
	bh=0As0W0Z+Jk2g7S8BVIrKZuOAzOjVEekdSMuA6mpnwLc=;
	h=To:Subject:From:Date:From;
	b=ZHW3YhjPtRTyE5qeo1ZkJ8yhV2fiVeygbAkMsi9Cs9nL1ysqw3DFrqK84GgozM8T2
	 6FlGCVyzXzsGkIHJCQySmfyhIM7n7pU7zx0R33yIDrEIym8uiEX5wukw6kYxb4/KUi
	 vHykFGPho8d1P2uFgdZ7cFnYPReaDyEgcVqVuGa9oJG+QI4keOi0vyLp82i9kzU7t0
	 AcsaUXn17Vn3wgXfm3NukXA7Zp7I3NYTjIaQxjhVtO1LZN0Ol1B2gmTEKYvmOCEnJ/
	 89RNSfvMksYwltCkwlos+HKkCGPJPI6ietXXo7ueP07+dt9uo/tcsIYEB41cTvxsCN
	 UzWwMMX7IVDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB7DEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857862876.6589.15125859757348725525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2af65a0372e7e0480262654f4ab0b54d970b0d6283f4e42ca0866f074eeca7
Date: Wed, 05 Jul 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688578628
