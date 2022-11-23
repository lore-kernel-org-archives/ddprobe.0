Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6B83236
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BCBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669233654;
	bh=6N17gGcvAW87Dy82b4RVJqS1mcjXcPToHnKEWnsVLn8=;
	h=To:Subject:From:Date:From;
	b=OmDdr9SEWsjRxby9kkcFBlQn06vA8e56CixD0NYtFkubUpzrhp6J012ksCeiTV7p5
	 eW2Eh8QQvtJjAa/5ppoZSq/R6qv00UVRuzGbda1nbK/vaHmHDrKU2XCbPtShFeb/UQ
	 3PwlvcDytmZSJJKh3Zs/YUUEK3uZiLXsr+b30x4PaXeCmW0Vg8jyVnBtgzYe7IK++A
	 OsahW1UtvzK8WFhA3Kg7vQgvkszYb/HApvPAcXI4AgmFhrtqXJTK0Ui9b6kH5ue5yX
	 dpKKzypzQNXlzU5AG7CcYIz/sVwR3gpvFEyBH4DOliKrG3hGVm6i1Tm1USTDtcpdYD
	 i0OFu9x9xqkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58155C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923365435.19980.9936601612767827015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f68630453e6a04cf073570eccfc9361a0c69698acb374660cd2ff5f3fb4ab8f
Date: Wed, 23 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669233654
