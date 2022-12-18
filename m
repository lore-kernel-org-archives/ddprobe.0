Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16412CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D26C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671391287;
	bh=09PbNRHQYDOZPwbyEm1j4H3YcD4iVSL5yZlh29mxnDw=;
	h=To:Subject:From:Date:From;
	b=se+rPSU7w2/6Cj/y3+IlZbyQvGgfSUvoAwQyETnu0bSqillwIfFFT9QrzzA0RI+Oi
	 vypz1iVoI/YDH+/OPZSvjvhoj4PFnz3lJ2cui+97coE6Px2WS2mOU76IHytVKDmpKr
	 eCKCnQjbE+gd1HDbSXGYXTZsnyN/MjxiDy+GbGaQOo7004Ao7LJ0P/K6fDTCC0T/2u
	 wVs4bLr2oasTF7ULKLpsdTcdNd3YWq8B2OujRX+AMzcOV8R7/qECZg1tUgA0RiuO6B
	 CdhJOo+EdesSTDa8bIP+jJc5GcZrSbQvBEgfFBFCZae2s1W3oom4Noi+jFIQPH2yon
	 hpRYFEHBUJpng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6842CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139128740.6839.9806609778642001918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7742a67f234f4ee9ea8e66c1d7be21ac69d9b5c3cbe0db54dc39b455903dd072
Date: Sun, 18 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671391287
