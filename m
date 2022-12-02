Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC92C7486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7824EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670014254;
	bh=Fp/OTOSBvg/T9xc00bg/cH6CanZg7sqogSLM+cCAc+0=;
	h=To:Subject:From:Date:From;
	b=ZUNex8g5cn7D0P+GgqRIj5mag4Wboq18nqWblvnEIS8CgS9SpCMNacjpKEVhMldOQ
	 xuCXOHs2p0DGsFUMtdYFd7DSPAPPUlHLTas3OfEHsZELCDKKOjfCMKoNUYYEpeApNd
	 ZsMITxOfw9H/bUs78HQje5Bp2W2CbyWvHY4KMnQ2uPJUDt5zP810jCtQq65B0aQ5Yg
	 lyE1h7nvG+IT3WLjRefGOv5gdasA3xBpoIgBjoVBOQemXqunSXok8+FnK2H5/rWAAl
	 BWCt8/Zu5oXsC1DEArLQfU65uguyPChQd7Q+BXaXxYKA/lYzbJIL1JZli7leTFTZfC
	 qIJbyJ1PKvWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FD0C47088
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001425435.5055.11707844183976216545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06fcf8c5abfcc2752c2b84445f83cb41261a02998f912aaa9822733ccd7f790
Date: Fri, 02 Dec 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670014254
