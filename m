Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A90B17E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKEHO+HX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80051C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699754296;
	bh=rDdEa8Odi4Q4qq8XXg5UETjOmuZZVDlsr+OUSoJj2B4=;
	h=To:Subject:From:Date:From;
	b=HKEHO+HXyNcmli7VnXteq4f/TkTEJm+/3MIgbMDv9bncZkrjbd191TLIGWMFSpebU
	 Dma3YSj+OWzA2GfQLAo6U1GbT4rLC89/Un1SjChMlJOnTXOpLdrsejU7VL/joFUiFp
	 kqllX2F7zWV/iy75OaMzPYBWcBIArYVvGjdj3wsnwso14liWZtEOsReg8q8vmwY0xt
	 CNj4RCAxXfkayxHiFTJXziEB1vPKgxlBRZS7aaRa26xXEcWM7Cwi45lZioleA2HKow
	 WjEuE1tUTBpJFCHMRg4aLclAKg1MORoa2uba68oen0zfGQOvaPIbgrtJ8EjYhDdb3V
	 YZLXv/v8CE5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69217C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169975429638.946.3187799479738928861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d401663072c17edcbf2b61402faa727fa9ce55d33786c96db6367c6b3f0cbf
Date: Sun, 12 Nov 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699754296
