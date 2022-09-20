Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16CF7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69957C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663705253;
	bh=lYJca/wcUjQhTOzT9llIy7gWTb15guAZjrUYQIuFjNY=;
	h=To:Subject:From:Date:From;
	b=HwSPttN/yARzeCKR7vilQnU+84x5mabJi/TECedMx2CkidyNsAIMt+IOHB55Afn0j
	 LV0fdWZvFvZifUOWn378dHS/B4XARnmznM23nTZldeBhAfYCvXNKUY5PBiqtJlIfxU
	 dKWcEKlQ/wOtDMi/Uz+ppHvfqBc9WMgEFV3abqsy5YWmq8b+acbXZQZy7RKIojdLkV
	 2rSY+a8F6pqYreJSI/XxViwr97mVcYWHOer/riiVJmBzOwYCOUIAf48u39skKAMuq8
	 T0NO0nwzdDYDM/TaA0odHNXtlH2mIkG6/zwBqqjumEnhtsJKXsKCcTMtTzBOHbzVT2
	 /HF7UCr2d5VDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5297DC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370525333.29260.16155767565977022179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09e772803e5e1d1433e11ccd6efcc843c3b96c92f373a8a772b4b1a1f9d1c6f
Date: Tue, 20 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663705253
