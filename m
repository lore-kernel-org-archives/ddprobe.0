Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DC613AE1
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 19:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C005BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694114048;
	bh=sJDT3N8GrpTc++WdLkbQS/gfevAxvQgdi+WdkgHsS1Y=;
	h=To:Subject:From:Date:From;
	b=Z/Ff1JYZAd8/s53GD79xHcbWYZQKGkyF1SqnSc3XrM85uKvXm0brMLSKuHYCNBGhv
	 AR6bzzpyaPHekILfvIBDksDCo1OsEIE5GsdoMCbDpyt5Mxoa4FSoWO5VXeAol4C1Cz
	 NDB3PPFuihwnog346zc5Dk0nfydTPmnqo9NPXDjvRv5+aj8S0RqbwJjErxW4IHiu5W
	 qxpVpIuNm6jSc4RG2FTweFCMCQ6FEONIgAx+iNDgusyhpqsfg6a4iIzVtF6bJyE5la
	 NBl948/Ki4Q78jnnggemfb3/t7yQZGQwSJHXiiJMztl9iwJYOxXCPMGv/PpzUZL+XG
	 MLV9bSykAYklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F20EC8750
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 19:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169411404866.7822.3756648581340325442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295044ae43f021a951ab64df7baad8a9588ca565dd511df1d3d94072c1343d2b
Date: Thu, 07 Sep 2023 19:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694114048
