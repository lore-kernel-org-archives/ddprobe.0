Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEAE1FB6
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 12:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9001C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683376685;
	bh=SqLiKUMtglwOekO48PtvMUTG3np2hCSPBbWOYcmtSgg=;
	h=To:Subject:From:Date:From;
	b=qYU/xeseMQM38MPoAttXv5d+FjIJsW5hmRLxL8iHA8+PNskrhVHa+vH37VtzE7Wx7
	 1eBj2o78OBn2ll6UFJuCdksXDvcmVT6HgvrX6V0+4mo2vI6M3dEhQBF7/yxzT1GMid
	 EtIvq7LRW83IinaAZpjTmPXwXsSL/Ob1H/XbPqvPI+wGMvAcvRQEzfdczXuXJqU8GV
	 yXXAE2CIiKHeA8BmvDN2ORU5kdVp+r2SphwcP7FQSMr5nY5DUjJysmwPjK+NDxYSUx
	 aNx4/BGH41/CBo5P92o0VwjNf5SJeMpcK/ssC2S42gmALhcm8b59teDnOf0Wd1y83f
	 gbswUa2mWqFAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8834C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 12:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168337668574.9599.1299049391132660190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a296cf32f6a1333831cab684356e2d935b0801d6f27eb2828001102e93d4abe8
Date: Sat, 06 May 2023 12:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683376685
