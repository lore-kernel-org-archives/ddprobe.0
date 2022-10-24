Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B811C7B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBABC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666587053;
	bh=iBlq38la19pMHhOCm2+Y9EC7L8RJBtPuu7uOghdJC3E=;
	h=To:Subject:From:Date:From;
	b=dISHu2nsGTWN8AN6TkJQxkQ8b5G06WxwuW7DvpmEWWsUe6K7E0U6LsoDCaLj+wRK9
	 yk+ROOricKDuSHRw+XDuuUVRSQ6S+6VxqqA4zGMdoLAmZuHlcE5FwdwStSImL5JjMK
	 tc/v7nVmm8Ji8xlDtmc6WItxP1e3e1DNSyG/qJnMIIEYYirm8PDZiwdg84scKoVBjl
	 M7wt81MKBLtazXYFn6Ejg1yx2X8T9sCy/TE1hfdgeIUaGBc5yX5muEA4QmObci3VRC
	 VXWLGSyz9rB1TfRgZpRHiq2jgJnVqIMUlj3n9seKiQ37L+oMltdYQT5aABW7s9YBZZ
	 HWITC0A0emK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51284FA373D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166658705332.14238.16504581769818520542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324287d6ce34c1c012591213d23d2c159dc4a7b74ee506a020223a0961440eb2
Date: Mon, 24 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666587053
