Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87AD8F57
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A12FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663999253;
	bh=sUR+2yAxHjbrsf3yEIKONyORpuTnq9Ngr/3TjW7NxA4=;
	h=To:Subject:From:Date:From;
	b=NGbTzxcTHVKanCKiGUIVmc1qJl7Ok5/1kcNXDRjrkaEMbKPeQry19z7/jRVKMMBD+
	 2j9MLLzhE3TI2R80IdALj5/9+oJw9qBttBvyTCytlOsxoV0uvKSA6+btz1fflvrMKG
	 VLlFeaZApA8uSELaV6x9fMDrgk6GhN+dJeY8w9PU4OZugX0ICcACyf1a1VflXSjKU0
	 hEQ4o2isC9At3YE7/nCG7IkjE68NXzu6gVFhRcc/0Jn4SSszgrAssnS+olAT/58cLQ
	 HSq4kZtmuybERp+UBOKE2u3+pMbAaFWH/biyzopnSQOA5GLypvyjrDGNl54UlAjdxC
	 qwK88i7pVxQOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F04FC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399925331.7387.10152343649751290660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752bf55df761d1f2c9fea11142292760b0471602d65939155f48fb9a7b3a65a9
Date: Sat, 24 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663999253
