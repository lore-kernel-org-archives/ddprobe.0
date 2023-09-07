Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42402A29
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 02:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ABDC433C9
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 02:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694052848;
	bh=iq+5GyUGFOunWohFZ1fwuUqy+sLNfcRE9KXwk+zjTaE=;
	h=To:Subject:From:Date:From;
	b=cY1DQlsgusKFO/R6YuAosJ3zfKE9vSvuv4Z2gI27Rcukr0exBxzucKtOCXg7jTfaE
	 QMdp1ByRV2N5iOWyrLblM4AscqUoESGo9GEi4YFbMRgfHq0m4y9FR5kfUriPyHmbE3
	 KBMoXDXawvJ74Og/gpGWqKD/XjgUJvMO1fE/CU5F7hcKsX+Vd5fpf/Tc0YqsGxJ9fX
	 UL2sz17uoSKDXo89OULyCe9yp8j/CpXCe5B0ev/tqCarhdaY6tl1qU8WY38msWf8tO
	 Qahh0eNnBwyeCEMX1nJQYjh6+6bGqZBf0kp+N2loU70h5O3zF+qFse6P+UqIrqe9Z1
	 6Jb6orhclKiYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A588CEE14AA
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169405284867.6142.10407651628464673454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8bf10dc5096d8c54f3b73a9c4beed19507d77387442b39bd2e8a65260eed57
Date: Thu, 07 Sep 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694052848
