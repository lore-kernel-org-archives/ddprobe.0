Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0DBC2FF
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 11:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF93FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692963848;
	bh=U9AVJOt0cgu+viF6D2M2vCgS/QE5NM3q13m+QzOdA+g=;
	h=To:Subject:From:Date:From;
	b=IDtShj8jA6aQitELOUA5/6w3rgygHdgKm8kQErowO9TNTCouLIJ+KJrM43CT9+VQG
	 jir+4sY3/NtPRk0X1zGq7o5Hlxv1zmCE1x396C9M5m79EHQ7JRnR98Y2xpAg9DBynG
	 eZV44DtueKnWQrKR471Jo3LfFG88/M3q+PeaZj6nUaFUJl5eXjMK14RfR5WiKdyf3U
	 UHdJ+2wZLzfBt6CbW/IgLfbAylC5hg7d0vPp53Q4wiONCifradOVm/Twk+Fo45+xYe
	 qfjZZMH1ichx1MpCL5qTgMWqfq8/nvy1CFFUnB3gBjt71Z/D+kINJYojfsb4krvrJG
	 lTnng1oSbXO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7525C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169296384867.7034.13978302478310784874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0575c8b0831c2d772e2ccf75cdb57b932bfe34546ea655a95ec3de18e21f68
Date: Fri, 25 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692963848
