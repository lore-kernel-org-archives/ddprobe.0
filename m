Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED12120F8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srCPI2bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0D1C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704177496;
	bh=gZ1CUUHujYpqawli1TPc4PmgT+Hy1V+WeNpTK/CWVqg=;
	h=To:Subject:From:Date:From;
	b=srCPI2bz9Pi6weGSZCF87YCoISoDRfo7/L4JYIwf5auBdq8TgUhz/+/HsKd+gjxhk
	 8LwkYoHPycstkBjZy0leQTLkKJXq96cneBN9r7OgX0KwgOBTf6d47T1ilB4fsMBjRC
	 HqSLFhND0n+lRxuBwgX8UxTvNRNMkRn9gXqIR9qUC5auKii+94IwA/Uj44DV+ws/Rj
	 +b0m/81CvWoJ8CgWVXPKarqmYGhsudJs4Oeaj6PmfWbE4geiMPaUmTs4YN+BCBvTwO
	 gTEe/QXrc8vJl/TNlhHFDilLB/EGnRVkidcDiRetGpZNiqytKJH/xfuBOag2G5BJcB
	 I18Sqsd80/1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F21C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170417749639.1298.5956482308286529775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45633f8022d4f4d6cf520b7c78d73a1dbe0080e23fad980f5466daec12988637
Date: Tue, 02 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704177496
