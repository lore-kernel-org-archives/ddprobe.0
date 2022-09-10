Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0F7815
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A35AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662776453;
	bh=tlYmPo0X6dWfswik9TnyR0APArQ5UbKSYaQ/APDRQZM=;
	h=To:Subject:From:Date:From;
	b=ojAJ7OtJsEm5XQ7ZR0R3UUa3gA5Gy8qX1mZqtAlsm/yecFEuUK3GvYLnT5Fq6AQUR
	 zVPmKUOkKbsH0jTwrbgndydOuniTvtB3IXfeNINp678s48wI5zWvMaAxbVsvtyHkRS
	 P8pqXfSfSV9H8LkhjYuWFTHmTAc7KUXOomodvjjCk55H1V7lKqQoLBgHzQfczpyb42
	 +HzG+uUYKrjeRr0ET6F1/MmJ+WZrBHUIna1YLIUnE3Q7VVGNu9rRfd5GLyiiFEUrdf
	 M4i3l+3NlO3oBgyETpvJRCOsUuUJ8R2V1m29k10gdaNTW95kMdc4BlyoLHMSfZLum9
	 0b1RO01WN3Rpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65030ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277645340.26343.6445607855612100395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95efec652b3bfb1b29d69593567836eee301fc27c4c24b99f000e80cde103ede
Date: Sat, 10 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662776453
