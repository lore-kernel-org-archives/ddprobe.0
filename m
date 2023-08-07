Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59688C8DF
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4827C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691403188;
	bh=JoRKg318EvfCAnr5hI3itzgQ1kI2zrf7wtWAc/4pcy4=;
	h=To:Subject:From:Date:From;
	b=c4a3jFm3pAxKO1zgoUnzzPueyClNVfI4hPe1e3ZKPhKM722bA1By/Zrk6/LUEgDCC
	 DD5ErIMDrqQBz6p/07RxhMZ1gsQ21FxyNsZ1W6WMT3vJthnXkZFX8FFEahff0o5W3M
	 SS11d3ecc3c7Uu8O6O2YO3xRd6BEG3lE+ZriqTFO2Jz1PLmolW9Np8yxkBawtWvZ9O
	 D0Nb709gMzmnHMZrogXS0MFbWydUJILI78qpsjgzV1nxbx1Oa8V33KpnC1ePR7nLUH
	 WyZTWq9aivd5oEWBV26eHeGbi4gw+2kspw50865fPDo/i+3hKr+gvIue17a06gIkx/
	 YUSx8IN5ZaoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D1EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169140318869.21628.15571370302349542033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96922dda8a4036b5699c70603b2629b21986fdb04ddd64014d010cf594698b0
Date: Mon, 07 Aug 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691403188
