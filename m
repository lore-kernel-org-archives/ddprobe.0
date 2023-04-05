Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B347C
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A78C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680658026;
	bh=5TptKFm+AAVSHBOGbhN8EqEELX3zHvmMxwCn/DEQ4Po=;
	h=To:Subject:From:Date:From;
	b=r9QguOXghu7RQsRTV7/FxFCDoo7G5nzRtM4MHosA0vsYIBFbogr1ptjy8MpOt5Brt
	 aLpcr1CdVBtUSKF2nytSNA/LYjkxKwvyPnuI8vPKg1GL635jVwyfqtmx0iub7aYKZO
	 fwGs2BpdTe47oc4VIX0j/gKk/FJ2wXQJKigaMaekLsYIRRLBrbx6cRoZbBybUkKMe0
	 JuWIB4ZhvihhWg1pq1pUOKrRSct4G9cmAD/yA0XwBb34qSzexInwbtaP8iGonU+gjN
	 /uE549lvJtACkPa965gP+ii+wQZM3h7UR73jFC3ivP7VkLOwFBPYUc/cOaQQNR8Qq0
	 Xt5UqaJT+to/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2FCDC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168065802578.22683.12788451376454841885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b642a56a6aea4aa23d5015a2b574ac6c7696dfc23d39cef2ea4e9192ba66d7e2
Date: Wed, 05 Apr 2023 01:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680658025
