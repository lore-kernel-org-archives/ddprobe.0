Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE548C1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705CAC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670449254;
	bh=dyrzZw7he4z6SRr080hTOVxZDoVS3svqMQUSFW2AEbU=;
	h=To:Subject:From:Date:From;
	b=H3DfZwKCmOGpVstXvkTo+bByMW7DfvQEf/KM+RsSQUm5zc68lqonpQQy/xPPrSYU5
	 FL3VrwemMAfAlToPWB+T4d7AMMGojqpCs65kDImUTZcypdTva79WstQoK+0bD6Sm6z
	 WHbm4QbByvKUVKtw4NOZOEKUzbIyLEbPtzsBluJ9DquXDKffm7EjeEbIkHF3ptKdQn
	 PlbB0ndsPOavOxlX9cioDyKBn5zQ/amTGxJgFHdNgz1Dpysv5tvT0Kly8YQg71V6Bc
	 TXg0jKCPWv0Vg5AdfAfMBGv/L1+V8sdoTfp05QR9p+QP77M6xth770d9JcDGL7+QSN
	 ynP054nDruOMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550ECC63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044925434.13022.14025630336655198804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9772a56b751ef24d617bb6703bf0bc1dee6d01f470d16f6154ab9d77096f97
Date: Wed, 07 Dec 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670449254
