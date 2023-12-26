Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CFC2C851
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK2msJdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B17C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703559496;
	bh=2UcrH8BQw/Se41gMySr0CtYasNUmISOYfCkIbwfLi80=;
	h=To:Subject:From:Date:From;
	b=gK2msJdXGVy05T5+N3Nh0RDg2t4Wxyy6NnLu/ihHftgO+eNSxNa1Voih/CrNhfwRR
	 x/o8bn/DXy0pdjx1V9gjBrCsRfktCaderhjPOZPyhpLpqBZg7Woa3pSYXsGq6fhYR/
	 33HoR52B4Q8hjFV6kX9J4wxk1hwbTuGvbH49S/bCOIkkNx7QsmQF2LWRRQ9ANfFi6+
	 kvsaB5Gpj0ddNHKbOEVM8yQD9Ejk80uhaTwz66PBH3PjFLl2z2OL7aDeHCMhkY0F56
	 OIdZWDuV4/0VFpwWhOzPTjnHVVRC1dv41y/sTPKsvDG4VGOK3Bkqtm4956NFv+qOfs
	 wu8I0Kol3XrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 873E2C4706F
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170355949650.14729.14313415212930472256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102331b179a536b6b676fa2ce6e8de950d81ac87edccb4ff88de40a10f0f20f7
Date: Tue, 26 Dec 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703559496
