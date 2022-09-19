Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4002746D
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E70C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663624253;
	bh=Q4q6bRjZ7oOl/ZhUQxvu82uxbrjt1uRpe68mjcAxYk8=;
	h=To:Subject:From:Date:From;
	b=CJckhRRyUMlRUbMHB7/0gnAQgPoqHIfXJvq5DkxBdpEr+TC9NaqN/YrT/YdIQthwe
	 48FRCht4T1Zhdn7Ard9fp8GMdhOevuS1SgPNAKn6qimczZkHenyD6mI4xnHYSjY+hU
	 mKQ5WnAe+emAtEh4Vq+k+z4xRI1Wj1cNyPJ10IO+VVAtOp3dKx6LTBk0ZXhbAv9U4F
	 +kCIFIDGslgoYOPEiJuQ2NaNlm88jSG9s2wQ5zhHT0spEKmcLS9FexvbiJWX0MXSwz
	 Gwr4Ra5FPVixyS6BiZlwu+Jv+vuFqglkdDbSj//VkC0Wcx0EdSiymndvyHbuC13NnI
	 AJgOuwgcr70YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F9EECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362425334.19743.5965124789304404209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4930e1dad60b6b586bde6693fe35503e454fb5bb12a07b10e301f89619b5425a
Date: Mon, 19 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663624253
