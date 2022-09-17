Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8E81378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DDAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663415453;
	bh=js2B9tpQrkIS93xcrv1d0Bw8uih22C9JYBglwAyFDlQ=;
	h=To:Subject:From:Date:From;
	b=dB1mIH6ZRxvPdx59KJqdEBhgGCu34w7k6a2UJrRU56xt4TT7vTpcR6xIUeSxS9FOl
	 anVsZX0JJuCL0YSKJ7FbxGqk1Gh941GWnCcGUAYuXXlPqw/JIRzYCi+RWuahptSoxH
	 rJYD6BE357rolBjUpe9NEHAYeUMuUOK4CnLwN+qnM3zZuy+agdmX5HvGzyq22yBlJF
	 zGNdyhueEJpL0X2Zq7cfoJeDt1XyotAgqPMPmLFnGHcIMQ72EJGK++c81qlSd9x152
	 qzWGpefU1wPq5uF6V5I5tFF/ZRm8C/QKFrNwYRwePXm0SUP31EnD2zGBZkwJQ9lXq4
	 dASu8u3nb0d2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F23CECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341545331.22686.3290907599118373379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e06b7ee55ba5d86b7e1c34a078b69d4d4ed187e4f19c7c295acda2e413595cc
Date: Sat, 17 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663415453
