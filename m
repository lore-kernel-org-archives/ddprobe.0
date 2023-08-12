Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A681867
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB757C433C9
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691830388;
	bh=KqU+SHv5or4m47d5Ja8go+VOR9oqZOl+Ens4Swn7PMM=;
	h=To:Subject:From:Date:From;
	b=Dp/YLzX/MF2NAviVb2lkWAYty5yNIDSXiBIyhZXv+mzPd6KLRNf9JxkDmzx8NCbLf
	 L43w8kceIwRHUwEKRwHonNbc/H2JhejLDhS5AhDoYR/hGVftd5LV2jg20J+lk5Egyl
	 W6jPaLDU34nQ3HPMMLxTUWBRSFEx4pIn1xSUl/4kWgsS97sh6VBDBWvVk2OCc8aORI
	 kp6c4L+a8Zy+QIcKtRoQ4yOyHMbL53AC2TvRkMQLU881i1bTcI5FuW4Hsaw2q4G1HS
	 YaxGDR3LrGIk3CV2QNlB8HAwfSCVwwVAtQZVr6WFnS1mu8zD2XOdNk1sIUem+PAlQs
	 RINyAb7FeNYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE94BC04A94
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169183038870.26029.7458547227263316367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95585ff13b40bd44d2ab9a665155f8d1b2469872abbcfbf69b5d45147a71b5ea
Date: Sat, 12 Aug 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691830388
