Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C877810F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFF4C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662097853;
	bh=OrhDyivX1N+5A/3M6bmmoWwPmb4k/Qv0dVuedOztsXo=;
	h=To:Subject:From:Date:From;
	b=Lq/vOjj3/WjIojxB8t5xJSRXYCiTrnlFhfB1KicWhGH/FWOY4iv95DebNO5qMtxg7
	 Q37OyxOiaVgAXJDoA9LSd/V3F++S3GMqvo2ysWHLH/BOcZRjX8kVLotGJxnK7uep0w
	 VD3lu/WusPJf+dFSkZb+bACtENvjLtPuvAWVymqJX3Z7N2D1cbSbOAuUVsCYCFYcwC
	 YmTT0khGmrYBwyG3+fWtZ2V2HWx9ozRtZFCuW9MkShubVqtSICm1zjs33JK3XwlDOI
	 PzS8ShWInnKEYL3fieqDMFZmtgftm61HAlyDT+bCWzD+7B1x4eVK4MjZCNj0ZtQEVx
	 IOWHrgUc7eXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55344ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209785334.32687.6674564682631633313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3679202a6f160e9f242bac79482821646d80cdc5181dec968387e0c187bc71b7
Date: Fri, 02 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662097853
