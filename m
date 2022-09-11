Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8AA7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67646C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662874853;
	bh=KJIfXKc0PXbdN2XAWuTbPG4ViKNGnvLVypsPqGNX624=;
	h=To:Subject:From:Date:From;
	b=TheDSC68RlDeC4OaJgNoX2EnXG0daeC9PAx2gQhtIGkwFhulZgTqVzDPLcImmtRuo
	 Y3e/JFs86VTL+SSQbP8EeCe4UBt9CQ/uOnLfEJVK6ixmujaIploWc/9nj8r9EWonGs
	 ZK5VOaU+BdJ8Z+4zu7dMBv5knR8sVsIOBg0oCO6CQwfNhrfxHk7ESEXtzn9tSdmFkv
	 NRpdeSfqqaxLjqEUnxBSf24woy79WCBxJldBpGLaI+Vu6tKdc/YVzre0KR9ZgCkcNb
	 Mq5BzeztUUoE7yia3xvgNBVbbK+GFigZ4gxKdQutqYh9Y/RGqQZOzIi/213m8cQXFF
	 MkujyP6PkRurg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DD8ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287485333.20622.9667726343084461761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf33e0c4723e3721cbd79a52cea5aed6d4ae734b08e978f3e553b833566192a
Date: Sun, 11 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662874853
