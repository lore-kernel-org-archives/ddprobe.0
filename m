Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4708814
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 16:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5595C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 16:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695142508;
	bh=z/U703l/asmL2+ZFZG2WDg8E9SVaMCTPoDFwDXGB8fg=;
	h=To:Subject:From:Date:From;
	b=Jc/khY5EXPhg6hjj3eNcDiipKA/N5ZDdmo7m/boyaBGjtj6jHOo9roHClMhsBkewa
	 hMSP8Ll/a5d1VdquYa8riL1QClYaZ0kCU8u/hdJVVks5rqi5HBNmjksPpnG7K8kpZR
	 9yAEMmVt3UI+DR/w4dAwcajfWX0SXpZkzxGwyrsLDE6T58MEcL+tNasRuzq2HSVs42
	 1KtIj7dm2MM23gi7p+dfIR9HcZmZr8FDIi6Cb4r6M1ejq4n0Szt8/g1lDhr5o+ia8h
	 BjW+RNVJJMSe/gccUJj+JK5KgiDKdFk4f41mh0BwUl7rCMvuZG2T4LDyS+pDZoc34n
	 z6nPSMZ2gZsyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AF3CE79A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 16:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169514250868.11562.950180160846767111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f84125bd0e08eef6e41e0cdb46691cdc6122f44c1fdf0e2e21151e0a6c86563
Date: Tue, 19 Sep 2023 16:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695142508
