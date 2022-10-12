Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD25C191
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69913C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665539453;
	bh=ZEmghpjfiycwSqvFR3j3LTl1OFfIV+esMFNsUE38QpY=;
	h=To:Subject:From:Date:From;
	b=skttlC5z3Ze7dD59hc4uYXZ6qP4uV6M0I+zSZGwMvf9AnwL0kOxekztzyzw+JrbGv
	 98ugT3+6F3Y0pRV6BmavbDXItSWbAfAQ02KzBuLg6b83iZ3DWo+oBzmGjlaXXNghlG
	 77IxrmgrulgoIB0wBFpGeDrOh7FSWAbwdu6EMtCDguDqreGoN6k5VERyut8Z99qIrb
	 cxUOdgDaYF59W60zKqwEiXUAtwnVHN1auKzCie8tSbkSdBGwwvUdHB8m/SDmZC1Jp4
	 5V06VIgQL1rkplDB/wHw2dMtNz8NPUW008X95zxqFClCv1OzctAGlBVr6HDwTKibDz
	 lwEGAzgp0XfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51523C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553945332.7465.17510774762999665303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30c938cfe124c77f37016ebc7eda5d457e730d67c5cfec20cf6c443cc38a5af
Date: Wed, 12 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665539453
