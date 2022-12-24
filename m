Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0678A1844
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A49C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671859887;
	bh=kaQzupwPxGZ+2y72PlVb7lDA0oLCzhARI4x642WZW7w=;
	h=To:Subject:From:Date:From;
	b=GDVPrAqLc4cYDaNziRPqe6okBpoYcNCQTqNMPO8+kyxl4x/J6OVgaaZly0TU9Ye4u
	 0FsUcACZ+evTzjU5zP+coIgtuZ1KhwUt7bY/psFwc1qfuTBYALNVS+y9CkQ7r8KK1L
	 up43sSSSZ4sN+JzB2iMmLw/OeDqqZ3uuwO3txH75lZZYPUMRS+7QXKSBXd3p6mCuIA
	 w7P0m9yu1Ka7URVuFX+hB3qaL/CmeUOf7RQV66yYjb0dIJ4FiErG2pb6xOmTQrwsb0
	 KO0l6KIhjRj2L+TThHikx/jpif+bH8j+YDM05AOJxs/AFcOrM4pLgP6HhyeiQ8M3RO
	 IzwYHqhpBo7XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8527BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185988752.21469.7588966939535857049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0aa6e5dda912a6bbde20e6dfb599dd2b8727f16c89db7827e6266cd0315bb1
Date: Sat, 24 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671859887
