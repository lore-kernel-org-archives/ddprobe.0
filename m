Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C8217D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80474C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673451087;
	bh=ilQkkyg+yvgSCet58w25vNrSsCAA37rwR0lg50F8LiE=;
	h=To:Subject:From:Date:From;
	b=FhbB/L853ZYcmE7o2no2fnOfNV9JG/sWx2UugqH8PzVTBxkjJbLQXl4zdSRlem5Cx
	 CYrCOQL5paafZFmpf63NnRYwRbIlinw7mnWSl9tGEWlvjKT9A7nvApP1gXMKd25e41
	 aehnHq2v7TC5ibl3MUvqY3gr/ZI8GLdmRhHgN9ibkJoPJ7wJwSSkrRPV86u9wdHm/W
	 1D0fZQMeQIWjrgJ55G4ymuVSoYk2dosL1oW5BQLQCfUrrUiBXzdXbN0x6YnjPT7Edr
	 KMJYblpUGeJwSnMEWNHGiyq7yFmG1wo9oz47IdOiahoQYKkTLUUVFuFZGiUL6C9nqp
	 9tR9WYDGi10BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631A4C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167345108739.31487.5887277431312524190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c6ea9be607e7db0cff7a92a8b4151c9bdae09589486d1348e675f70d2c6f90
Date: Wed, 11 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673451087
