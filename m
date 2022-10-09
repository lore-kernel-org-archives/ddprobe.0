Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE06A1C2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3D6C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665356453;
	bh=S0e/Kz5UK6El+QM5puJL064OKEYZ6zxgkp/9TbJhl7Q=;
	h=To:Subject:From:Date:From;
	b=Oynx/p7mNeazUENjBo9hXqmZM7QG5ogeSp5fKjtP68xrpvjR5udLe21j0HMjrTlS4
	 /H0l/4JfuhLaN2fPxezlFfxhNS74azNQoWxFRuHP2GWTtCVjNw2vVF9AbsfdlM5lD/
	 Wae8HOh6IZceb9GtPHPcPLTsgjD9N1j8YZlT/UCYUpu7zyOk8h11kzuAxSDg+i/eHt
	 roGNz/VnnxEVINj/F2IljHQKWPrfhFDtVhDw5vVoNzCOPMmJOjha7L2wSvfRlMYpqQ
	 PAdHPeypdYYOwiWO4KlxGAIHCJjfoqHjKYxDhul7gQyXxPuq9NajV1RHkmF/XLukKK
	 W6C/qTm20TaEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5322AC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535645333.3187.15990705577882248497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b981dca9e9c79c71c68278ff782a68eddf23ea690646dd6d600b74c493732e
Date: Sun, 09 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665356453
