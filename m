Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8067E7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D235C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671336087;
	bh=Tzp5tNNI66ZLm93oOvcv7L9G7gkzDGRWh16IzmzmE2s=;
	h=To:Subject:From:Date:From;
	b=qSrzHAypVM57To575Mo/XJWUV4Zxx2sEbwdnud9L1xB34OV8n+q92X6JyoH+5CqdQ
	 EbSoBRgD0Tb4xQRDDlevkLBCd51a+PmwseUQcsLhgNKCfPArN8S3BfknUi0tI8yiBP
	 n4T2KnWfrho6xThz8zjZ3DAJVOljnjL31U7iCOlpe4tRjER7SCk056FLONgnufAug+
	 BHchL1IC4HJFUPq0ecilxz2of91PLtXPw4TYaWMgnzwqsB87qRRK4Np/mYFAM+/9hH
	 /qQ4f2o2LNrInabFei7lMwjTFx+Vi6hS9ot3ILNl5T7qKjqReuI79DeaDobj/MKQ3G
	 ew1KGeSRX6+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BBCC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133608737.24100.10314255553322545437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b865cbc37a44bb18edef6f640a1b5dab1c5bc90791fc74ef6550f0c72cd45a49
Date: Sun, 18 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671336087
