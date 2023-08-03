Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6001A1F164
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 13:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3843C433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691069528;
	bh=tIj9UiM5YtWZR01+MmvHGirOj/CHaqsdKQLSEvTVlvY=;
	h=To:Subject:From:Date:From;
	b=FM9CXQKYj4MaM5VsbXEbfG76atRpVWmEBs0E0q4HTwHtpxY04rLRGfVYd1EYmDcj3
	 hc0KcdgUazIfnp+dYg0QtGne5UnNHn2mdZE8S3vCHoOzRUEJuZo8Of7CTYXeI5xQUB
	 PoLMFs7ytsHawJbDfGshLJCG18pcBrb2joFrKtp7l1K5E1PXJ6Psdmpj+sCacWdsx5
	 QQCz3mYVRjC54YmZt9HLpvlUwc6a0XYr+yh6GAF4nM5gDysQ8XvCqlC2esxgtUovpt
	 IrWKDdr63ZinyZ5SjTlB7o/ndg0AATpuUyFi8f75bjpWnGlBzm/Iy4VvKc8jmTLlab
	 9QJdOk5wGgeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66ECC001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 13:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169106952867.4181.2629358327098747693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e976acdc6d1d0592bccd74d0322a1ac4d2f5482f3b7fac320b8a412df775217a
Date: Thu, 03 Aug 2023 13:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691069528
