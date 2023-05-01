Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E7F7E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21B94C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682933886;
	bh=FGnxmuWc0bslQbINsk9kD0WelbZQZrUSr7KnLPz5uxs=;
	h=To:Subject:From:Date:From;
	b=g0cxZtEGYHs7eohIJACsRp8+o6mEvS7OM09Up7A1SkMBnuBoUlQ8nwucDpMZiTMXW
	 uJXtdulzFmAVYLE2bUV9yfUVwqblxSLo7OZpgPRsBBAX0Frl1AVMOELCjRpPBxoe2C
	 vXGZfKeRnRXF/KEoT+grB7XBJqdqUVN41hnpRSddjBTlEMsJ5CP2q6CgADYR2A2qM/
	 b8sIv7uBsxQMUx8xP9J1QnmkKIwREvm45eKAyr99NN+pmUgM05L+lMf//GkPSfNSrc
	 IKtGGVj8JEXMHS8ciQ9qgM58fYPaAxfXumSnRw0l0zgHfBbMcCTJWE0AIv9KrUBSv/
	 +2zZxehf8jWMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 056AEC77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:38:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293388598.25691.6538488906163947381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33a1e9d24e9ee77c4bc45753675393f1436637c6f0978c56ee765949a721c43
Date: Mon, 01 May 2023 09:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682933885
