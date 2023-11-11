Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EA0185B
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdlMs0S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EDC9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699664296;
	bh=HXoT/q2E6Thc8uz3A/+hEjWxjeWC6E/o9L+Y8Bz00bY=;
	h=To:Subject:From:Date:From;
	b=rdlMs0S/Qkb67g1XZczo3cm8CxChPwe/7yHqok9hfrf6h4+8M/BKYel8I22k9gWDG
	 dabz3FFnGF1ONqtDfyp3mEZ3PTzTw4q+UYa0n9W2L3PX6pZ1iYPj/Z0NJcmUNy4Uhu
	 m3E/GNHRdTbFPpMkp51+GF/vNOEvKVRmX+sxFjqpLPy482ojDijDDI6Pzj8xRF2rG3
	 I+CWaYh5aRQLz8i1HiH4fWF+xldN2pumJPU0LhjXkWojWWuo0pwS+cXZE69fsoUGUa
	 JpvEWiJk1y99pjvK+gJ2hjkxxnWArt6IfC5D1zD7q3GUavRD4h6qbcnEZ5wRCOgUUq
	 cReuUs2Zy8QFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC6EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169966429640.31190.8796072425814723607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8041ded681e51722d88f565ced22d31d72a81923c21314e6e7d125d22e1fdba
Date: Sat, 11 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699664296
