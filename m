Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C262F7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8C1C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662898853;
	bh=9wGzT4U5354VbAX4RgAh2agS3453nuQa964LBElyn58=;
	h=To:Subject:From:Date:From;
	b=LvlpSZ3UMVEvazr3mfczUNiPujcYSnfgugeInzSTIB6a1DxD9t/Jw1D6Fbup3azlK
	 spWG/J8wFOwD16M45vy34MO5iVQquQaK0pvHb8nrINSYzetHSyTbL+fK1U4xY+EIJs
	 WDsgslnKgQJvk15qf3qjc3qTTIrO1lKI0BZOkmW/RgSTI+OosGIJ6KBuEnJzl7k9+1
	 qcgGOVHFlHtvfDkvUOccNoH/2bf8knu/svGFMCJEFD/z5eqU1EHvTxrlB4Qc2aA6k3
	 9P/Vs+ljh9DPcJqxSO7Ai4Iutl4DZJZ+dpUp5UILg7jY9WDPSTjMl8jBi8bzNDblaV
	 aZJpCkpxuUqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507FCECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166289885332.6977.16747430253724849019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155f96722302e1ff09ac329ac9c3a2b887098dc7bcacb6a27ccd56944f55e1a4
Date: Sun, 11 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662898853
