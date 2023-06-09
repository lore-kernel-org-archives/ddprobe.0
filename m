Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7562823403
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F158AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686349686;
	bh=V1MjpmGDwp+0pKw8w9aiPQWRLKU7PV9U84vTLiDVP3Q=;
	h=To:Subject:From:Date:From;
	b=R3k+dvruWDMlPC2gIrkjCGrzT6wgED80Sf/Vc+D4O+5G7S34o8xJRtUVeu3Y87c8/
	 iGZhgxM+TcsO472bP5MuqPRXLYoKAdiU4e3V0lDF1oFveaJV2DIlWN3VzkNj0B3Z0M
	 QaWNbXOmENFk7gNHvfdGxmCVtJ4icqTn2cPWJbW0JXxz+Hr5eFNvgKhGM2Qq9xnj1Y
	 PbT/droBZJqHs64NXtGo0WejoDg8zGGwmqmTB2hh1k6ggij0ap2dl6TYWkdOcNfbza
	 Qg3u1ZFgFOd1v95QGGzs/b21/WLEqmLSri89G51Hm64aHV9XcJ9qCd+b4gcA1Z6GbQ
	 wxqUqUSH2cdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB940C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168634968579.29012.15009869748647182870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315375c3a23ddef40932d34eba7a8a932addcb9366d5d175509b1f28dc3c8537
Date: Fri, 09 Jun 2023 22:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686349685
