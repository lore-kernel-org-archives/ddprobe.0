Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E2C2F2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D81EC433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670964687;
	bh=AotaIhRVvcQFGX2qayfH6ullILASiow+wTzgHRADXus=;
	h=To:Subject:From:Date:From;
	b=Q+zMwpqwlAQnXd3zRTsp8PFQCa6gs24ykI4/4lbcIz+jJBfErE61jSP2Q7k7e2N0a
	 XeHiBegzCD51hxoAWn1yaozUZMajkyhEkSgFbWvVIx/rRHPUvMdw77Vbf9k2pv0mYp
	 B/Dg4lrNER1FqdP2Zm4b0yI2XK8dVGUigBoLXavrFOWzPk+1gogI9JyBw1/3kmUBxL
	 QA2GmumGQX6tyl9DbcQsldHL5BdyuFBt5xPPqTZ/GLMguT3zMScgLfbAobXci8GGyH
	 3EJBGzKwOtdP3IHuRAxcJGKvcIl7uLF0kFm2LbwIsc2I2sjvycHjqneXPDZc1Ywdpd
	 uQjvcjvvDs7+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BAEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096468739.12852.15580960556143225320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066589cd3416840fc0a301d2120116a103109c20639c96bf1c0e0f97ca4599d3
Date: Tue, 13 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670964687
