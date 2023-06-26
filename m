Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB52182CC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B56C433C9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687816388;
	bh=h5Y/DBojyhOcsYZ1R23U0aGi2zJCXgnic4wbVR2qlQY=;
	h=To:Subject:From:Date:From;
	b=SUlRK1vHDTV+v8wO+OqFxXus+nOVOk0iqqQPZtXimcUMumSL9PT+3GjbXcWHh4LnN
	 jf3R/brxl1626e+wX/cxO9tWKm03wOdDV8TXzhxqWhAQLMS7+089X+antYWq6dZmag
	 OKBY92eUWLLWsD5ChSHx7nIxi/BwFZ0qzNkTgYU5vDRMGK+f4+QAKL1dlaGqrS+Gzr
	 C8wAvDaiOqwH4nJs1Le2FcDtJoMQmQwm8YlNGnDDu/yjqhIshIPb8trmIiwPVKSpRK
	 iMNBtNgOiUKRe3U8Wiotu2i0oNN/IlOWZIKovsgCEkLF3VGUNqIWAnzWZ+fXWDC4S9
	 9Nx584EK4PbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A1EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781638868.10901.14455053070811532611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec98780df0d2bb57ba361b7046bc2491ccaa37c530b5f2f0c3aae8664257a64
Date: Mon, 26 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687816388
