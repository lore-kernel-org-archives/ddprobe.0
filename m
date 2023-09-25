Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798CE6AA1
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 04:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E75C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 04:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695617708;
	bh=Mhj3QenWX2pblejzGpOV88ipg7zxjTXq8gJJq/HplM8=;
	h=To:Subject:From:Date:From;
	b=YdHRCrfX0VvX+XBQ0RqyjoPsGNcCjnVLHkH24YhLrFtj8vsJCGayYcnGnGDmuhVnU
	 Tp99zmLR9RLbXllFT+tyb9hSwe2mcw0ejff9YY2Hn1obfl+ctJMXp/9Qz4JECmFY5y
	 DWf30KZyMpOrRCKC+xF7Wgdlk918+Xm1b0JjvVcesNO5ZfkIEJ0a/UAFH5vkgAQyP0
	 YtIb8cDGl9qI8DpjqqY14a6hY0Rxw8RLV8kaAOzEGD0fsWi3sA2I8zPp0Q0FP1JW9E
	 GQOgrDq3/qZ4WRBLWa1V1v1/sUDT2XsZsxTkuH/Ji3Aj+LEuHRg6KpW7gbsAUNiBhl
	 7/ApWXOoLbLbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2587CE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 04:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169561770870.16586.13800389056934606368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e874a24f62fd1290f1969b34bb4d1321e7bfcfcebb5d09d6838e52a0b93b66ba
Date: Mon, 25 Sep 2023 04:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695617708
