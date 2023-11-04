Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4317D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugSa4Lbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF57C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699099696;
	bh=pv2xmjKlb8RBOiapVSbTwY8xfVRK6LGek5htW05yaCc=;
	h=To:Subject:From:Date:From;
	b=ugSa4Lbd+9C5vP1CvRPpNu14eZjhCpqueikAoGH2jxKmcANcsBpQ0fI2dHml5qopB
	 20zcmLPgrl/LFkg8maW/oX4XCP3dKNcHUI/xi5aPcng0vec4uzF2fOSkw3euJgFU0m
	 jTqGMmxjk9xpt5h/xJlsma4O6gd8sA/ohoFwkKCgoTL/VDb+kZFF6jqvtK5AAhf3d9
	 lTTnTAWt6BXSV3WLLT0RD+FvMZW7DYzNRmqelaMyOc4cPVSU9X/VI/x7xNia8IkCKp
	 ab2L3CPLhE/vbrehzDnSaOHVqiOLhvMTAMn/4eKt0dlk23RLpomtHSzp0sxVoUaUGV
	 NfoGtFXzWPk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622C8C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169909969639.16165.14697950408298475957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db3f9576b2a263ba2c2bd51801eb59b52454f0cdcf8a15eefcfb091cb20a1a2
Date: Sat, 04 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699099696
