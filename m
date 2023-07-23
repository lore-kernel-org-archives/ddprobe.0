Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629807F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 11:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE19DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 11:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690113128;
	bh=ykinZacervF4wlCQz2709wJNC6y9WJj069DQ1vUTCL8=;
	h=To:Subject:From:Date:From;
	b=c0pzCn+Y+Nuwjyh5NdsaPHsfx0UK3PCqWOEIiZB8o435xpEzOpGq9U03lZRSJAvLd
	 1ulB7jxZWO+8mZyC8Poc6AmBrTIJtSpaEap9pZvFO+G15yIN5dXsklwA/V8g82VqIg
	 Cy797Db709Wq27oqCgOQUtSCPn9yIQqzshgcNyOHHcmllG0iIMDgOlMeDrMqepSS6z
	 r+9Li/7K82L7iUbPpsgP60Q+MteUnNjyMmddiXxp9gvntUICmlxi2UWTwfhIxg1Ylz
	 czx0nhW0p37kzlpVO7D6bNAUT97NPHRtXs+zIGa6m5/O7s/GjWQok80c2Lp8jA9f8J
	 CCfkJzo2YPX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC61AC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 11:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169011312868.9611.2276150325867744106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b91231c74a1078f64375b5b54bf901d56f7950f36a285e72075eedf914391b
Date: Sun, 23 Jul 2023 11:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690113128
