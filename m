Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B676AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7160AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663608053;
	bh=kEIRuKVnpQ3x+qp+pnGLnUKMqO2/qAr3+JaUCeA/aQA=;
	h=To:Subject:From:Date:From;
	b=Xb4ZtKitIHl9DG+RyviUhjaIA5Yg07kDQwm2C8Q09gfFRekdDz3KlnpKBHDJO0GsS
	 Yzs06o/TGmD6xqhWtt586VSwB77ciX9YOUR2uPc/bRsifBeP2JME3XjOnQxEL2PRny
	 W6os9y7jWJuKowM2zHhpDtuan6WZm7hg1lcAvKsGKjIIg5yQEK4WmPQ5ee7LFwc4hx
	 5wMSjD5II7DYAikpiMRKSAOasYPlGMP3YNSlC9Jp+sINhIM+rQr1NPwErM/hpR/QpL
	 WGeTWacqg5BgQW1ib66NTi1sFwCCGsRyZIMaEmjyD/JGyL15g/uKpWuBywbIqc+P6T
	 Xf9OfwPOwjchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543DAECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360805333.2956.9988375713206506371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75200c024473af0b9972967705b9f05b5bddf41a993275864a741147ff363920
Date: Mon, 19 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663608053
