Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519B480D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE18CC433C9
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690692728;
	bh=4kd1we+OKnSJkkwbcz6ZZ7JOoXtoJVSPVjffwtzhrUE=;
	h=To:Subject:From:Date:From;
	b=FMfLtYcSeQt3ZtOZ+zbbaFFFRKAOzs2nllyQwr9KhlaVnPc6V0H8doebX5IWHiQVN
	 fo5FqEnAMUh6lF2nLYex1lpbrgOz6zwakv2pPTx0k9xDbE99dUzHTMfK4+WYtoCc+l
	 Nv4fTO9jdxXqUoKH1fx+thD7NyL/eLWJcYzRDRwqPYSfes5hWcP39ee93/38SXSQFL
	 b1vSMZM9awiSu34hPft9f71vKoApKAZEI0ywV7bpsxWZVc/K982uQMogFULIeY5qMt
	 T9UoEYP2jDhPvUj0Q0EBut4OKme/8GJJ4hETQ7/Ey4eKLSwneDJjMV1E2Lvx8ApVft
	 cnWaVGVDD7N7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CAEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 04:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169069272866.25653.5322188065304623060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6bfdf9f88b1048b4b823c7c0d45a61880385d68d4c039ef28e5deaa883e904
Date: Sun, 30 Jul 2023 04:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690692728
