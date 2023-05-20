Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DD9658
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 14:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09E9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 14:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684593545;
	bh=JW9LUUtsVS31VKX3PUbP7b8D4hvT3rCDiSqSRxPLCUY=;
	h=To:Subject:From:Date:From;
	b=jpkGLA9ivxTD5ad1mdUn0DZIdrZ92j3rNZI/wQapnPLJ5OgzlFzvtWky+TJ+6R73l
	 w+9lwCIWR/r+idajOtKLjWbPUdorNIJWq7te6NoXSpupdlP7YRftVLEn9q4yUsPDuA
	 xLrYXrfc5OUTzVel8qkOJx1ydxymUHeZD0A2PPtIQNlO9jCmtsLTZAriqos+7E/iTq
	 QCwm1xiur0d/mGTBMABdGFF9Q3pV+bJFSvvhccw8zoAyibIeaA+x+7fwU+DhKTFnHg
	 XdcMUa1nIbrY+MvhpnKh1sVXK/oUtqN/v+nx+dR5odbtDGBUf+nGtUdfeAmikV4XXa
	 uxPWEbFBvT4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81F9C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 14:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168459354574.3094.6043324390033519184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b1905206b3f05ac1b1ac17ccb8a8f367458025c9d4a02f60870138fc7804f0
Date: Sat, 20 May 2023 14:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684593545
