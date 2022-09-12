Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBBA2589
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5A8C433D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662980453;
	bh=runxZvtYF1/GD3GlmUw6SvA9CX2ll9Lp7G8G92TpAyc=;
	h=To:Subject:From:Date:From;
	b=ItfrTHfMAm4GLoH+KcYYKH5apJHVbU2zkWIZ5fCDJCZHP9p9zscCmfYRHdgPYuGGA
	 oxZSKyNk12zpt6rJvDmaynR8nhLIttMZEB9uKc7TDSLr9cwds4eFlIrn9IyEoBDpiW
	 DP0obvj/tWiLCjfnHEsN10inohOGEi1fv8WZT8HJdcu2WpCBeGcpMWbnNAgAh4hE4y
	 zuClAcMkrAnxNLX3Z2tm5H+8jJFK6aBqYYG7LZ8Fenb2j5KeS4GtnWH5Ne1dTpszvF
	 6V5d8uW1GLruxeW/MLLm1dOIeeDYByH3QH6Qw+RlbZ0NwrMd0pxRxkrRqJBZCI//R1
	 OhbDdVw5DdKQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52453ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298045333.4349.3220369263572431878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae5f95750115ea7cab04a282b61583ca6139b2f3cd4ac2b443ed969c2b6e454
Date: Mon, 12 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662980453
