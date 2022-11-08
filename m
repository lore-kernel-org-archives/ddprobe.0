Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88E6322E
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75598C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667881254;
	bh=qD2NrbJH/y74uPHLpVer6bOa/AvzeTkHLZvkcIL583c=;
	h=To:Subject:From:Date:From;
	b=S4LGxvdTAnfFAcazzxGMjMtSl/wHIhMGB+VxmHvQr9xA9Ol7XTd9YIqd0lEuIucBV
	 wpprfxT5BdtVHp8VfY71W5ZSVQA7gCdx8OL8Cm/Ha4hSB922hPHboWkQF7R4czO1Lo
	 TouRgsMy49HQvPRY1Xkw7AMABpmXwk7isv9P+lWw8j7BAHw8YANIJx531waOp3JRvu
	 2i8qfNXSmYnKowLa+8qArsraVv7baHl0t9Y8FfY1Hzo3JZ9rfY/2K8GUvi8w7mZykC
	 tFSp3mODPHk4FWiq//0K1Y7vCXAkYA4r1X0XTEv70NKlhPd6rR5/A8FVU5f2p8bf7w
	 uBPgbFwG97hcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57413C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788125434.4329.6771429779784176945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bbed778196d52c6379c132995d9f250c8e3b566c0700bf777c596d4d9d4529
Date: Tue, 08 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667881254
