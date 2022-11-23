Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C7E7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CA8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669179654;
	bh=POb7mZeDyaqyh7E+/XNfiD8f6SoeTMO7xFuAPSXS6ik=;
	h=To:Subject:From:Date:From;
	b=cUd5BuJdnDfHWvmLo/ayBQ95iSVilSsNDRLPy/nZtKVkhvlXBfiZQKogCWKpkthvh
	 JPohQp4FTY/bHRfmEBbusJ1w6p1xVJ2b8BRpdLz02NR3x/mmkauH+wWQp5SL4m3Z5j
	 OWUB8CXT+nwyTJ51eS0qK7fRhdKIGGQjKws+Q7IkQTzRkMGU+lUAmUbWI977CQZDje
	 5EOW2d5g75i4Qn09kggzz6WkuXTXzSqE72RlKFvbHErF4zPUrup8U3JW6JOHaWLxFk
	 j4/RHbZTiClbCxhcCXsHJ3QIt4uGHNg9zOaskvXiq9LbSrfSGKg9mDQ2u9IMFlf5D7
	 +Oa5lsiUzA2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F51C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917965433.31829.2862767850531729583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd09e529ddbecb761eb7cd5844c850240e18e707dbcbf1d056993b20b63ba6c
Date: Wed, 23 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669179654
