Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BF73210
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE9DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669314054;
	bh=ax69G3hkUG+CivDjR1WcMGT2cpm+vn/jPhqzIc7W4sY=;
	h=To:Subject:From:Date:From;
	b=k9wExObByxzrD2rc6dzZ6sXkgTCXFTQSTa7aSGlGRX1C1xoxfw8fMzJait1HjbXsH
	 m/+j/64QwFMMIucVLGu2RswuVSBZyUDHkV1r52RJD1kzZGh19Vq7cOy5a28Nh/LJ0+
	 jSF9PFubBVRgJ8qOkPv9lbJ/NVfPIVA1iXHVYcwiz6hKwmwgRgk7wyurwc9Wk8D808
	 foXTyM7s5SrS86WhnFS9+sRw+GhA80EcY5BP5PcAXu0JO1V7mgC66bbrQNippx9OBW
	 4nZlSffN5v1aC6jYbQjl1qcseF4J1sHZmvwawUlFAJe00YaT98huGeDlDrnLK1PmQL
	 G2Pr3c/a7SeDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DE5C4321E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931405433.28730.14866860552870953999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0947393444a4a239f6a3df8821b1ef7149847f88106e70e4607c8698a2688084
Date: Thu, 24 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669314054
