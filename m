Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD5710FF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AEFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672317087;
	bh=MnaOV/TzZB7FfOrd2GX8K0sh+tsxm9csqV8lDWOxt84=;
	h=To:Subject:From:Date:From;
	b=lKU6/ajRT4R7KWXBHk+CWgxPHzGY2b/2hn4SzooFIwRN0AwKKZb1otYQ8NWBAgJsY
	 xO5DFNhqAX7OHrlHYxypbO2/L+S4IiW+h0N6usMPAHLb9FjX472UGxW+Dv3fPV5rEn
	 gno27ryO01XCzDzh8fN2iEbcN0KtchIWWtpOSk1aBsZEPCB3sqfXl/vlEzrQFzAWS7
	 EgCrwb+WwTsCoQmu8e6IAvzNxAY5xWWxBN41CwiK8KRet9GN7Xg22ejaprWDzoifek
	 qaVp7dfutpFk7quSvK2opwN7lEqkfHUk2f9CkAQ7gUoOkaJ9mU+0uZhhY7lmm5v57g
	 1bwk1wn3Vix4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E16C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167231708740.18760.5525418072527133145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c8c1635424dba18b3c5a95178335c849496c90f76b3cc4ebabfcd3c2241378
Date: Thu, 29 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672317087
