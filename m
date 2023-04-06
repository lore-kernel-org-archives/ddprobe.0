Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224FEA94F
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 16:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9E7C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680798485;
	bh=deEqc82HvzLHNhaaM+KCzsxq92T/PQMU+3e/kq+stVc=;
	h=To:Subject:From:Date:From;
	b=a8T9QJNm7kK7RYInyePN8gF35Z8CnAMWfFX1p5YiQdQIm6KXbfOz7le5fOFEBi2il
	 8l44svlMt9D1StakkyDfVrXcyK0oKp+rSNaSOqrbxKrkn1M7i0rdKDLSekheBIxDqV
	 YmuC1oRgAfKEgW3sSnW6CvFxUOEEaIoZ7kIAvh06hz7GnumMB5Qkx1jZ/nz2I7zDJI
	 nviBPw6i6R7cMaJpToEU2hQ1AHsAx9/fAFkPK68JGjbGtjdSwFd84pzMCztrgfY39Q
	 mVveGl9pRmZT9s2RNnSKZF2s8E+3sRLbP5emjsQsGQghpl4aSdTZj88umCVVT2UIce
	 hYRK1RWq9nzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2221C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 16:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168079848572.16681.8221952285657053261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1adc2d1a0b22f774a1477749d1401ace9aafc68213dcb74105dfa2b62b6038
Date: Thu, 06 Apr 2023 16:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680798485
