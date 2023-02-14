Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4B1C5E4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE15C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676401025;
	bh=BcCcioHGOXtRFYh5D670fmPD4qHH69fQjO7km194xYQ=;
	h=To:Subject:From:Date:From;
	b=DLr6Dy9Ye4zkjEQ8kiFDFMaiKHTVE+cfne+lq0z06RXOQXaRdq4xZHaZe1qOgZuRb
	 UzwviCZtGG2+6tWME7mKHKP7T//YfuwpKxsblTASNT5LjqWd7AVeZrgtzMK0SUAlva
	 V6/urlri6XiERP0YWsHJz65yrmm60J9PMkCKWMcl4Vu4B1LagGIU+BpOZ+MJi7h4Rt
	 1JYOvEn3+ZoC0kF6k8wHZSZJA0EI/ihvYqhsl5A+kmHGKhUaU4nidELK8hewilrwxi
	 /B0W7NdCSCOzx0OFz5LL1732i+kwg+xP0RNhJdWrnW7TS8kGKq7v1l0mk7Ftj6SluO
	 TslW9D9ENtHnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC68C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167640102575.29270.13758923880658984287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fa7183ffbbb93f6009d8633b4229036b9eaa6cb653f629f37b5f0d7576f6a0
Date: Tue, 14 Feb 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676401025
