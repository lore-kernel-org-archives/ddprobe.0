Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0475B63F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E151C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671256887;
	bh=nlfx9+hFj1p9aQNh1bXbLT9uflSNY44Zpd0EqOXKXHM=;
	h=To:Subject:From:Date:From;
	b=epDKSy/2F0FRj223dBwqolRuqJPm9gbjA0+5mvA7ii2jl1O0SpyWCV9YCv0FpbaHS
	 zhOeIS5PWs6j1/fdYmqrkxj92tOIvU/DvKMSWsM7BMdS8ZUkef4TwykiFj9BIHxmzx
	 r+chKjb3xVPU1q5rzIhj/Btj1uetCaEUJLoh7j+G2W7eCTRqUS/Ua/HbwPb4BEQ/DM
	 Sk3/lBxRBOkqW//knDWE9eLeTN/HT0RCW2fKydTL4RRhOrRAALMClAxU7pZeJQV2zK
	 7FK/UrknNtedcnnliIG5bhdvB9rBRIIiL2WBTB9S/gtW50H6tSgc8zrtz67MsymNhE
	 5MbR7x6U2Y0ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706D3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125688739.20387.17730000863824453726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f6c9efdc51bde3c1532a50e4e51260de015959f7fd2f0add7c56c80740e683
Date: Sat, 17 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671256887
