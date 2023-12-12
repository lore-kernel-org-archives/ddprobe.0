Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADB15D49C
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOUkBX4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B9BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702383496;
	bh=DCrJsED81b1ccOn3SHNj1Tz5nywqeadvYkWJG9AIjqc=;
	h=To:Subject:From:Date:From;
	b=lOUkBX4jtdeAht20eTb7PcnZFxinEIusFu13WLOhTSUyh8x59j002yTTh93iF0u8C
	 AbseQnWtzfyKTLCTNr7h1S51BI3GeybTQTOJR6V6K1LPVYkjzQnCK3NIF4VXFEejJH
	 ppzsauGpIi/luD9n/KSSPIfPPlxiIlbke5XtH9XXP5tFvLgEvRmwTMPGi9QeCtzGIa
	 zMY5DIpYIO2Pj4RHbxaFdL4b76boMz0DO78ekDyPWOevZyow55mBJ249NhNO4XiFoG
	 2D0BfiyCWUtaJJpsLjxEx14UOOaR6EaMBDjkyAXfmCaPf+8rPDjgaitEzzGsV8S0Fd
	 jlRIvjfokiiSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65ECAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170238349640.31335.13154632834710657588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8191a4f21b2f41cfd65ee6741b67923c1283e5826f2429548941d338c900ad7b
Date: Tue, 12 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702383496
