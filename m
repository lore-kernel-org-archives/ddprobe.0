Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18174422
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN1vB4bP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8329BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704026896;
	bh=nqWDEGczyqy1Pqi8Yexd32HhQxGBwUknhNDl1q3+Q7o=;
	h=To:Subject:From:Date:From;
	b=qN1vB4bPUDMZABPcPBzYRvdXVnkHKaig+QXcw896Ns/AYhZc5Ln1fQ7KqhW9smuw7
	 jQsM9p8mZEteWXdsn+I4E5gMnH8I5YUQZi+g4QG1No/sXY1V7nQac3ZvxLYIirvo3Y
	 dHpLZsaqVzrWiClSovmjLTtOgo/fCv0J4FGU+VcyJaZ8H3W18UEQTv8+LtpyV+2a2D
	 QKAanp4L8UdMmBM9oo744h+lvblW3PYtGm/5UT8VxJiXHMisgHYIi2F1kKwSWwwpLI
	 htnC7FVKVbpUWWBK79ObAoXfd8NJwufDEHP0Rvkd16K5pVDMXGsuglKyQYenttU+/8
	 SwojIax3fjkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FF4C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170402689639.20473.8076082801557775189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4812106dcb4270b235733dcaf200fe1a2a1eb2eb28d0eba69fc5a9a624925e7
Date: Sun, 31 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704026896
