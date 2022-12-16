Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA73036E
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1AFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671172887;
	bh=K6EZ/yF+awR/Q/U8EY+VbdvNlL7KG8KNh7XTLEhNYk4=;
	h=To:Subject:From:Date:From;
	b=EWMCwHit8Ek6tjCcdzOpTPbGbl7Z2GaiSvkQ9a980JZPvngZGBFFTRTenMMoas4Uz
	 3QFx0nyLVXWXiAA/vwzP8mXdqRvyXxyx6h4Nd3p2Y279zRDIMWTiOeRjZ7CdXsxLqP
	 0QJyErbPigZPnEmrHKc+1+pCgY7exuMj8mMi9FrSl3VC+vzuoGg4C+4imrHCLA4WSV
	 i/nUzLw7Z2PGXxILliyBLZXHHFHrWm0K400nDe/7Yh0bIEG/krdOmT8MVyR5ZavmKn
	 XYdFKm7sKq/ff2KP3xXunESj8YcvwsuumsJtCqiiB+Vx/JP2CmeYXg6b7Ptx7FFhlf
	 IBVprVXf8KhGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B23C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117288739.9287.9675440717395491162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e9f1bedea0e8f25f79c257868d907abec0d226eb06729c02fbda4d96d9006d
Date: Fri, 16 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671172887
