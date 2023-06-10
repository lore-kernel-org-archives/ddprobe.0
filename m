Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A278C171A4
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 14:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 064F2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 14:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686406866;
	bh=aNuT2xJhcbs2qSv/WqDLk1Bomj3DFmTfjwBlb8kbFjs=;
	h=To:Subject:From:Date:From;
	b=UE7bQ7O7W3SjzaKsTSK2NIsePEkyWxywYiZPIlkyr2NXyxNXPz7GoOZR0QfMykChh
	 /OVaGjLPISqm0LzUhzXemCkirNNZb4hL8wl4A0jQMkLHPsBY7mQB+NqM1lrzs5RsXT
	 pAYBVzXTeI2wwxZ0Qh0n0RYZHKW84SvqJHUbEtj67pZ4iDuYfzErsWGtuQTaECK6Nk
	 jjwEO0KZEL9HV8DMGEQXYSzmuKu+4cJxRxDrUzg6ms6A9vRfQT2UWbiFqleCTn95dV
	 mNuL22n7efhZTp5cnYPqvabGByEfAmTMEPY2+PHpLy62pNWsR0dIdwju/K7cbJjtjd
	 QCVHEKECTQXWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D8EC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 14:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640686586.13970.10252609604202490083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036cd74137f934fe4622a2e6e78602235b2dc6889ba78ff5324589e96ef754a2
Date: Sat, 10 Jun 2023 14:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686406865
