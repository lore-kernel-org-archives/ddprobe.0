Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD60186C
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 21:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC+3UVge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF86EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696973228;
	bh=g6D+EpQN/Fld2D7T4JVZb77OMt3py/cCQ0L5nmHtfSQ=;
	h=To:Subject:From:Date:From;
	b=fC+3UVges2XL2HHAmojICR97A/2S44kphYurtSslqKV0dp16DHt9Us5Oacx9RYK1U
	 5rAQnleEftnTYOCvmTNtcQwqqDysnFlm1tdXgSlUO2B5ze/iYD2mIJYuEWD3XIKosj
	 hq8cirsfNs39gr4gfOCEKtFhtHvQGXYJsEjp1jKNCGmsHmbiZeuUk+NfqQMsLLGyof
	 5S57tmovxCdDh1P59xS59vzSFA485A1gmS/HZEW1drvIW5EWLAJ8tTLtWKOQjAcr7m
	 gpjnqvNXcHmmDAzWcgYvVGvwYzE5q6CRJR4+nLdP47hkedx56QNp6eYbrZZBDwlrzR
	 bKMk+hpVZMpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C5CD98C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169697322869.25894.1629209961723086160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c718997f9d249075129bbfe63a05daa2b2955bf8f31293901c2b7b4c672c07
Date: Tue, 10 Oct 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696973228
