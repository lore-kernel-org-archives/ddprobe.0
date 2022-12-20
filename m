Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE58139B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B73C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671539487;
	bh=ISvNu8SZjIVJa/Pw+7elnlXXRVcDALWfIZVgF4pWmKc=;
	h=To:Subject:From:Date:From;
	b=NPn0ceTejuXgaLq1W+XIL+KfriLYjQoHCZoEO0ngYET7tyvsguXhiplUCOyl3sgYc
	 lyP6aYAIMVxITaYbJuQQCggLe2h5Kb4kPpMu3L2/D7UhZtl2PXWZiDMZGEnxjTRftu
	 NXB1NxSmyFaHN+RFdF4iqC+tVsMFjBlzcmzmelBSoYKtdMAM9gIfQ0BpGAFHXw12Ql
	 gZr4nJNxnsfn+0n9S5nWt+Kx5Uq5+e5p8PA/Md42aTu18yVXawbqFjXPMshol9WHjJ
	 YUMxl9wkod+FrX0ufhdC6H97b3W4s8yIkeQOgiU174AXrOOZ+esEqVSiONH5QclbcV
	 OBzkxfnPeA9gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E048C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153948737.25291.8699759011787852145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe822b31d7ee028f86e7612dc60c46558613e316f4254e9aaa41cbd03091ffb
Date: Tue, 20 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671539487
