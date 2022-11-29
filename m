Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65C0627
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC19C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669690254;
	bh=B4POjKjbNZWkd6kZ8k2N/aImAWB0jKWYEsnb5YfYsaU=;
	h=To:Subject:From:Date:From;
	b=EkAbeWHKz4jukwPhW9TChIdWM3hxMWccF6m1c1dEHYHnuJxNf4NfJOvX2/saqjSL5
	 Z4ut5XFImeZez4C/t9kNC9pyEX0uzyPmIeBoeas8HWayzehqP/jOtaJ7sqHWNvnqIk
	 SixkHgQBO6iLMgkojOHJjpeYRo+Pu0V/qYPKxJ2f1sCj7FpA88IK8XxZzA79gPaNWo
	 Fk3vfNejYEbPaMMUk2Uwpjhk1IOn8a1uNgOtMRqaYZN3x0Eq0nOTJCqn8gFqLOVvbA
	 rHKMge1ChNv5Br2WSqbhutUA4CQwsGXBC4kOd1ZyFqRil0TeXHFDaXgUrm6DwRxCdZ
	 UJAGYtobXqsPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51732C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969025432.5067.11370681560313001086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82e82b4f96e77208b7958cdfad5383c22c542a237b9cb764c4e3bb26d33ae62
Date: Tue, 29 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669690254
