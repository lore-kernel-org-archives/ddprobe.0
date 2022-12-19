Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC76710EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A91C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671442287;
	bh=aEOhDebPmVBSgb8gINE0Al70syfvd8kUjoazPL512Ws=;
	h=To:Subject:From:Date:From;
	b=GogglDvQuW8lx1+RGgnYjiBYrfPWqID56dF34nniIDFw8IoaPkz/fSyUfyC1MmAOX
	 qPUnmpCTFtMYGtaxQhALR3hi86oYLFzSyeG5c0VPkdgnOkzhU5ObPJu6HBvCFA5PNN
	 o7FqcC6XWBb6QK8JEwN+yBHyMjdOOIUsfNkKJ+L8Q1fTF8VGZhlRar4CZAX6FazDzv
	 7Q/GvLeIFAqRZmp1pw8b5C4oS3DPWtFB6ePuhZJPiNX66tA2ooHJ26RqfL8PrEiWLg
	 TirApKi6galpLU3cwseWDU7j7s3xV4DIyR6D5+cmTfoZsSBiBGn/asFU7cWOUh1mJ0
	 kpRb1ADHXyXlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640B5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144228740.10646.2696875945631916706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9692f8044921f9e68f705acb80f1ff07b6d0d321be934abf02ad99c29973e904
Date: Mon, 19 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671442287
