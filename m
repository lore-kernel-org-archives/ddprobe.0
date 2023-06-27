Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E52446A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDFBC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687903988;
	bh=NFhtveptdmE2jzq4RsuWPcU6QoaPjAkFFmGZCkKhD60=;
	h=To:Subject:From:Date:From;
	b=TireujKpq/TMFGOVsiO41v6Wi+wdCkOxtTCa4BDktfL2g/hzGFME+X0TpaJ7IiRMG
	 ycHBqlX5kO2+106Os6Vws5PnwDSjuw0FWwmQOT/Ba01QnNHJh/SMkbdmXbGKnMEMBa
	 2J9x3nv3wT/7VaHz3rD3ua8HnRPbcSKxiQvjme+mSo7mcam9luYAtw+K5sMKvlP4Ud
	 Ncz1OVDX8wnpa1u/GR99PLtP3EwdqZS02YMkTs36Ka4evMzbUA0+yy0ERjJM1xP1R+
	 bEbRCMynfmh/KdqY+JvLMZvpJYY+CmcMfeBOzIKI68uEvBW2OkjYIUOBwOgJzCBfzv
	 sbIoegCQhWYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F0BEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790398876.18816.16275681032102530161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7150d216fc2a8a643e268c0daf32dd8b9ee67c81654657f6373fe84cb3cbb9c4
Date: Tue, 27 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687903988
