Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08677B
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8E7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667149254;
	bh=Mp76BbkLYFMB4GqM1cc5k47OvS3jg27cBCpen3p2zgQ=;
	h=To:Subject:From:Date:From;
	b=aMBFsQMuFGEsHQlqYE2+4gRIvc584mqtPSYee4YnOvUkjfCAMpJ4nUxXKJO36Dz3Y
	 Y7dwwPQ04yuIe9kvy14AiwQl9e/9AZFwM2BDVMUG9ifz9D5upBPnuDUzQxLwkuFfh0
	 7lSTf7rOO6pMpbYr9kZGnTFScPm0OjFJKWYIceZfpTvRZTbdsEV/+geETj5NALcHYT
	 eaXF/xA4BUiHJlDKtJtaWDV+u+/alLzoDDsK4noIq1ZIeEKRePUzMo19+Cg62xoSs3
	 tQKdKA3qHFXsq/nVAa0jyYzjouC4c4i+uf13q3S5jda3Vfq0VQUxl4/Eq2YImZkG/l
	 uKkEbcZJ0gnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD26C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166714925435.6411.10603426580362164399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9992d26f843453569ef4ccb2e13f944ab5faff85311bebb965a3bd100b94f9d
Date: Sun, 30 Oct 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667149254
