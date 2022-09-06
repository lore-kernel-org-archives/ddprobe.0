Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B900517D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8C4C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662444653;
	bh=E7IQPFHNcbixbTbDCSvBTQwwRrq/Y05VO+x3NGfONwg=;
	h=To:Subject:From:Date:From;
	b=gQEs/ROCfoKDgs9iKfZzTI1+4zqBoOWIFfBUQ2803PtAaEOAGMro5wtIUqlSQU0EY
	 5I5l4nBk+wZBJglWMf93zi9aNznWpVsaIIWZn6EGjRcolN7Vy98zoGugdgkMi8SV9I
	 ZwEk3T+mMN4rTjAuoWk7rRuIko3L3cdOyT3gyEQwoDCzMU0dRUEGETL99WpmVhPoaa
	 oxSvr0DHcxybI/3PcvXfIJl76ZDkIljBPIdOTnFnGwgu75wj+L88QeUybb3UNQwIAr
	 Uw65xink/WzCbU5O/6OelwNmNTVt+j3rFvWutzS4eOKu7eqvZUnqe6oMrHVrBKMFcR
	 7xg48MzOFND6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C4AC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244465332.2278.128687209928144713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d557f92a4ca0bd532ad792bda493aa45b1b545412c7f350e3385b10b4457d9
Date: Tue, 06 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662444653
