Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FD0EA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF50C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662802253;
	bh=SoYgXXoi35EeSsCEZsjmDInrW73lyjCDjKq5UVoS1ag=;
	h=To:Subject:From:Date:From;
	b=gCMa2xm2vM7Dv6Ciwpqepqmx6YTJIRrNkUAceqFAF6tuAqN8A+ghGYy/KKg4X2IG7
	 5inCgZ8xNTktnFhTKm6U+/36rz2DlRmCbin83JpefrTkfjmkh+TLCAjEQzwYVpaGi0
	 oSJ3s46GqFsxQBhyTxKe7/1js/HKUleqgHFlJbEV5cRZUOVYCvCNrSq65CtJ7558DF
	 uTUAD+FWTw/fzs8fuUQDb6if4aV/XecRC0y2oNsUjn80lACzgqy/z5drUhAyMlO8wb
	 d/9AImvFIBVx75Z6i+qCsd5vlK7l2H5XFh26Btf8fJRHRo1s2NrPO3X6na6MhLH8pw
	 s+hui/MskMHVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521B1ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280225332.1978.8388673869333145560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4724931df769409eb61b84a9bb97270eb63a0d4b25a0360ecf139f4d289fac5c
Date: Sat, 10 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662802253
