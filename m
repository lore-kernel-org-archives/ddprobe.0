Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA9F7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C6BC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680569225;
	bh=HvIHf8/rnVuQvzRQb35mIXHM+Q5zWtv8BYlCtGGU7e0=;
	h=To:Subject:From:Date:From;
	b=ipr92xLyVsWo3IlHiB0FhOhVjOzBXwxhw7gvVpPcVK1hdnWsuCMsALRiG2Hm61+5V
	 +mLh+d0BLqrphN6+EJfhjcB21OLyGdDfd8bKBcajw2aRLaK5vJYr0qiG0t1QAKWCN/
	 5+Ab9zvF3gYVr/PbVBY/k2luQ70i9L3qviOr4HfvdJB7/jORkEUor7ny0X955jZq7w
	 kn4BeEzkOvVVUTj2IFegu4tGzF5dnk2xDBrMYSmenjCtMHLiWf3P2vxM/XVQw7f6TI
	 r2RrYNVaHyP+4+2ouUlJEpN4sqHVsKYyz1QHlrM4X4KhvV34JqmKjfk2vi6bA/2YgV
	 YGS/CmmbMuO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DDDC76196
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168056922579.25631.15659966756875911213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b352f736ba6a30d2200d0ed4a5fc0463e78daf1d436e42ec6c88f191907ff020
Date: Tue, 04 Apr 2023 00:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680569225
