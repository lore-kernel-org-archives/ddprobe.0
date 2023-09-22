Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8310E7494
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 05:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B92C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 05:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695362108;
	bh=IVJas/lij3V+HIz3JegiHyx1EHGvbGlGWNvVZQVSge4=;
	h=To:Subject:From:Date:From;
	b=Ga7yS/AX7quIMJCZeHiqy7CRLgiZHsnNkia9VNaGzxzethjj36/X5AQVz/tgZOFrf
	 s4vznfv76NX9ol3+MkfG9O0yPWjrzwsao81S07tz44m+jrIfbsWMleuvvSuWvJCLyU
	 PVns1/pEzD6QBbJQ5YqVmwMxX1ysTfkjQgVIAXvab7U/R9cSNNaJq91n2bJKJ9Gzz6
	 8TKGeoZq6LR+mnIyc0v19E/tvvPJitn5xY2u4L7OdCh8CimX1E4EptkeJbuopAWzVz
	 akCecKO4wMfLoIoVB0sPj70fXLSgElGLxwpnfzg3OosjSflk1iT0rn9FCtW9Tfl4yJ
	 ntIMn1XowITSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B117CE7D0C9
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 05:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169536210871.9553.2580300302487407007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a5a35ed78c7f3523db362efeb5cc37bcaa32c73311aef775bd59aaefdf0165
Date: Fri, 22 Sep 2023 05:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695362108
