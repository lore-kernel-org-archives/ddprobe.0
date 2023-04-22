Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC6664F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 22:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA67BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 22:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682203866;
	bh=sYYtiebN2Eor5EJkuJMz//80f6gAk4E4BjHKIMQRUlo=;
	h=To:Subject:From:Date:From;
	b=cPdi2XIVdADFkt0AkqfKbDjCYoukGFwVt+QZ5fFvhh25sxOQl+X1Bwk5nY7SgahS+
	 l1YWhfKiXv2mb7gwmwnd3hx3AG9HYI1sNUe7HFssJ8kFHPlHWj8wDRwCWORjbPPbRk
	 xW9qp8iyYndu76m+dEY/eTuAi630clTMLtxCd+Ojewp3GtEDbXrXpUDj5xgCeTlF1p
	 z+dOTPR8oWeTgPWYGGU6MaV/w3Btg5h0sPydqOckbInk8PCXJQAE1EBPlF1RuyIVg+
	 S5X/gbuhGvm/vFnwHjOhhQCYIbYc6BjefIaUrnasvDr8NgGGFc1qberf31M+GBmYQb
	 37oDUWFLRcOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD19C77B78
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 22:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168220386578.20371.4345547711258926645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5607eb44dde379461761ec8093cf1493080a96ce9b40c81356bb9aaad1532a25
Date: Sat, 22 Apr 2023 22:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682203865
