Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8337119BCD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E161DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689879728;
	bh=UN4E7MJtHalSXHJowcBX8JbbuB+zQbUGy4MQTPjj44U=;
	h=To:Subject:From:Date:From;
	b=R/Tx6pKpbH4Vs1P4p3sutvMhVpzC5IFtEszI9R6E82Tuqs0THeHhYllP8jT/+YnBT
	 Wv0N1X8RL+V0z0w43xPH2nPArUI59g+Er1JsqtANQSNGWG2IOb1xi4Qm6kaK4IjMOH
	 zai/IWzBhHUxt4gAoiFLLLChc5DC1mKtwKzb8Ng2OipW/SlDpaydJ0BY8P7xQDOam5
	 Uepp3pNJbPBNJD0atzg1RGOwI/QEh5gVd2nZpmOB1XTMfiz9B2swKayvHR5TWh8g4/
	 vXqVQbYYo/G/m2oTvdT+CJ1gStMOKo8x24PPdUVm5I3uJqxhUDhLNeh+iSacGA7OHM
	 ZW+kpKYunJJEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BB3C001DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987972873.25409.12402129778487636238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba79eddadb7d9935a1319eaf741aff90c72bb7bffb9b83401c7ee7be5cc6cfb
Date: Thu, 20 Jul 2023 19:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689879728
