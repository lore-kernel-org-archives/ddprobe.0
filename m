Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699C01FB6
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 04:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09559C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 04:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684124946;
	bh=9SAl2CfMiM98TWSl0dZx2TUdSgvvI2Y7TWkNYrV+F3g=;
	h=To:Subject:From:Date:From;
	b=Fg1uBfsaENWMs1ATwWAYSk1KJ7hptAogQiM20KHHZ+0RAHmkbFju/Dhem+enG9CCW
	 kEI2tVMJ4ePm4Da/kHOQNjcQJKImll4v1bfXFTdrMKz3VjEOBc4mvJc/AlTQAe2WQE
	 CDI4f+GTtImy0VYK2bchhd2hzvy8x6nWAZIKmaCpfdeJasWpdlCktwiL9mUKWaKywH
	 mA2+pDugQIhYRZ8aklbkTGd4zL0jzRn+g98UBatEHJbZnbvPg9kqlbw2dwDvI2c/27
	 hyYFoDjTv35D0dIkaoSKcrXPxni6N99gKEs8XTSl/rTUNibesDjp8ZWJGHmWrZATgM
	 uO/zhhkSYUhXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC330C7EE22
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 04:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168412494585.25405.8724547736264411941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186d03edbcbe67bc0c62281eecd5f84598acfbda1e111a6335628c4046300fd3
Date: Mon, 15 May 2023 04:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684124945
