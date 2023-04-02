Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490AA2C9E
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7227C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680455105;
	bh=MUHn9mnhTw76u1s6ZjIWGeEnrl4u0arLwZOhVXvrAM0=;
	h=To:Subject:From:Date:From;
	b=Lg90XeEOIOxlW4hslTCog+UF1WjQA9Vfcjagj1ovo7JhUePo/xmWSqMs6b/5McL1O
	 lc8k3JsW+kTIWB6+BbeqYLgO5f+sj3y5h2iR4heB8DTpzRbU+/W7MqHm7FlXJ2oG+a
	 DLXXmP0hiqIjvq5zZoNq2xZMqnhEXZsDWywu158PXJ1vijE5ryMksPOn6scZHWSBs+
	 oInA9994SC3VitCkLkBSecif5u3YI2NMTyv0Y2pEtYMNZa4DpDun6QixTHDI5tX+Vq
	 7Ddmahzh2XR09kjnTTpArekVPLcuh5Lyb/DhMgn02E0r5N+5wpC3WONnwC76hTKZlr
	 W2JBS+BSyvU2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1A5C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168045510575.24210.13499760342898317532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf6c749791704aaa7064b5e8506a166b9b493b02720284c74280f0eb000eedc
Date: Sun, 02 Apr 2023 17:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680455105
