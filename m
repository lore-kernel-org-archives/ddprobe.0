Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A225399
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 21:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F5BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 21:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693515848;
	bh=gBKzfka2VeUh4cOw2W22ksZaCluuiI4UVGq99PJ0tjI=;
	h=To:Subject:From:Date:From;
	b=Qbn7u1Jt0s2a39C5Bl4yr2QjFNggFGd8bDjrSKui9WTBMEs0f/HsPJsgwJWnYEXIx
	 Q/8ZHkG7EoijzYyGDKemmtZZKP5haIXjbZ1xhUnGsdZA8qUBYzGmYPkyp1gbB6jni7
	 /8XzN1z5wqzmn/ZBLiyr9JYc3bmWrGLNXjSe4KAYQXjjHA69vcS4fgz/uFde5zo1nT
	 VntHJMQ9lMS8c0Kait2VR7yuMQAcVIgWZWMtS73ASCBPdN4Lnjm5LGRid1PeYjd7PH
	 1i/wFTswDAuCWHEWfuRRJm9z82mPQShN9kC1Jd7C2ZJI/4cEk+og3vyFhNjt+1KIHD
	 Q9/9+rlDAsJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF35C83F2F
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 21:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169351584875.12381.17722826028094142870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166b413f2dac6442ec83f404320e2c626db20b9ef70c1ca26e0902525e7f99e3
Date: Thu, 31 Aug 2023 21:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693515848
