Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3704A3C
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 19:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3518C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 19:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676230445;
	bh=eg3JUhrfAmobsajxCzwRPZ7PscyRwl6Doi0Unw1yuvw=;
	h=To:Subject:From:Date:From;
	b=i+pIkVsvcTNHYEu9qGwvu+QwtL0t58lKmB5p2cKNT28/zWVjd2UU21Z61Ea1ulUFf
	 WnbiITFaKsFQBwS32H1Zq1wRP0lkJthQAtP0BA6TvE4TLSxEs+JIlfQV05xihoqhxr
	 rotHiwETnHvofjmJaJO+nCFoiMXQmifFmIVYDDHIDtLP2TfdIotCRTuMf2WCBdW/ee
	 O9Cs9k8Kv/GL3BQ+W5DSkHJDuwtixEgTna8fkPg+QES2M2Qsa7N55OZO9tA0+kFEed
	 pgI8hwKmvB+kpfTiIJppbtqCbXBMwspj44j2nw/EcobBORpQOwwsSHwhL0vlLl0d7U
	 8F/08aSVJubJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C281EC636D3
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 19:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167623044573.1875.17191083671128532735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42f84e85d32fd93a83f288a1c36bc1df9985c62707fe1b5027a5bf24f3aa2f2
Date: Sun, 12 Feb 2023 19:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676230445
