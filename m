Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEEF19D
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 02:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83FEC433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 02:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696214168;
	bh=bPr5bcN1zOHKNxxHlcXYylJ6QgHCvVMc4gPY7lZRy68=;
	h=To:Subject:From:Date:From;
	b=uMtF0q678Vy+tJYRouVLtQjdXnWKYxvg/duIhg/ap0EHl/GPKPkIxllGNtPqoI6dG
	 BZSDZoH5j4pxs70+xpnzP70phbY6NLPxhk996jbPT2Lue5jAEDztQRK62FQRjtg6p/
	 ODFwnQTbyJt0INes76opkmHBFxyg5zaAeBP7dfxqGQ91IWREZO5fY4bj8LOUAjElxM
	 wssH5RTPmCzX5Y/YuLue3uPfP5WxDeZ0oodwX1Vzut5Tly+Mnc/447N2nkkkrp0iNy
	 hfoPTFBg0M5Dz+JH2huYEomOzpTtSbeAQ6NPUhQfbDoi/05MyPsj0zLjG9SoibSulc
	 R7UaQGqgN9AVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75E2E784A6
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 02:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169621416867.24611.5491619425743001475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7496d70307b2ebd25fc9951ed23d8ea2e40fdddffc4b6663b5e9a4cb5beda9
Date: Mon, 02 Oct 2023 02:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696214168
