Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486EC29A0
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 16:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A5BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 16:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677774965;
	bh=Q60iHV97W5oPwhqlEX1N0WvJYRe83DaZC5rnoZfus1c=;
	h=To:Subject:From:Date:From;
	b=rZvVEQp4wahrDqsVFfckwG1vuGlkq7h6+9IeKBdQB/n8avXfdP6vgMdnYk0I+fulp
	 h1maITf0F2RIoKXHpoLu5q44tC2p2G4v+e9TozDSfK9jgdkCjGlq8iXe5TQY00nsFY
	 hNyHlwPINo6bBy+7HznILyvBYwD0CUusw28XJLZNU/lvuIO2COdQG6gefy9yQ34ZFS
	 hm9ztpPecNwDoxiwLVJwAmzVNdopQ0E4DRhiPAbn/pDb7t52E4ybTiV3khliUQFLCw
	 UyDU+RPpTenO/iUQvhfDhP7gzZ+60MXDjF+nHJn2PRkyI1o6EUCnBfo5PSjgX2zYFg
	 PeTUcs2s3nxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7198C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 16:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167777496580.25196.8012462469135346959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500db856143c6e8647363131d10cbaa88e93180212bb399d24ab74d1dd9f4f3f
Date: Thu, 02 Mar 2023 16:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677774965
