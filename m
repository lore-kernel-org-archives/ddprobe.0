Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4FC1FBC
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC4C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680858485;
	bh=wbJIKLVm1EIahvLmRsPFqLcG+Q/CtyLIwCTp2qUVwr4=;
	h=To:Subject:From:Date:From;
	b=XctqH2dTAiLiKhzK0fO1FR3zJb86jxSEo16ALIh/VMfpjstCOtaRAg6Yh+vovSLSJ
	 GfrG80kCRNdmV00Es56CARubomzhk+RaswfXqwAkqCLeUXriW3tMErCa+zPQfKvweH
	 JkphASFMv9zFDLkDU+LmN8EjrsELFvNwTZi6j6IYWg2tg74r2NpxGufp4VFmpyU5ZT
	 zRTMCuNm65Qs0Ok4M6Tc/WnT9BXa31YV9zn4adS4lurnFzRlDhfrqBD36DuzTamVIl
	 1KUyupMmuBRJoVU4iJEZZ01yIugZ1t04bJD+l2cRBZR1LgFY8Ap/dbF6kA/8S9d5QS
	 lJF2hFhN/6Gsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C92C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 09:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085848573.20817.16179727680388755015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38479b80ffbaaa7753b8b233211da28121b222e09b02cc4f74f84f014b392653
Date: Fri, 07 Apr 2023 09:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680858485
