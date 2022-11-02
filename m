Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CD763F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DED1C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667399454;
	bh=rYeEIrO+tbLCuOBoAiwoQdl7gFfye2aTNMk6ryEfsjo=;
	h=To:Subject:From:Date:From;
	b=EtCxAnRn4YOV+OG4iLA+Q/qKnFNu4pkXRSsNuihcy9n0+r9BE1Wuux1oGaBYLY0Y2
	 sVtviequVI8rQWpq/yQ+IXWHk37G80mPlNLl1enKf3Gad1NaJ5lpnauTVMbqAObOlI
	 oiT7u+sNcMsf1mwZjOrWPH1crrmXAJ4n+TvmKa3jHgTCRoVh6+6pTNLNw6rsc2na+/
	 KA3Q1cD0pwC0GOaNonomHIgTcmmYAQZdUJaG6Q+4KGalASEf/FQcoJUJM+b215W5Nj
	 1Zou1i3dOx1Fjy7N7Wz87bMUMPZGpanBGrU9MkU4WMqB7krCkdUsOmZm39j0+MZ4qB
	 4HPj48onNdDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DD3C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739945433.8720.5327909099728939687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ec739716d6b5641d51d521c059dab6e50623572e886055367caa1be44704db
Date: Wed, 02 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667399454
