Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED04168BA
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 19:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPVYnJ33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35FBC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 19:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697313428;
	bh=e09/Hi7Dfl0iof3oPrNk3icRY5N6MDLEHdE6a/W7Bog=;
	h=To:Subject:From:Date:From;
	b=dPVYnJ335MKoJwh+9E4Trl3565QcgC4jj5Q2hJyI763LgmCw8Q0s9YcDl1yO75FqQ
	 mj4ARilLqMm5CuzLlAE2GUUa3/squYugSdvGDZ9RVTXMGzuiHNbbA2HWj80ONvDa2Q
	 tEpueKsqSpTKzmhhmtWbuizMItl67kuNcz57b3CpxHslDMe9ahh9D8H1qDdPfoX+Ve
	 l+79CRadt+OC0geyfrp+pFU0swRjJgdIIJIrqRovnenRtxIwqskHaBwS3dPJGYb1qm
	 FavPmaQ+cqcroW7inv7ZPjDKxStOcmOOQoLjzJG7+gvR/gv0Qfe5qis+rGwtCC0zRr
	 Rl5du3uX6HuSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73ACCDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 19:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169731342869.30999.8484035427678177377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2ae0910de3484348d1516610029dd1b5a321181673c203e772f05fbd82b5df
Date: Sat, 14 Oct 2023 19:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697313428
