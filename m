Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA771C06
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31E5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690556528;
	bh=d9nSp/O5zM74fUhHoVfE+oNq/Xx+QQxsbfzI4cPPIf8=;
	h=To:Subject:From:Date:From;
	b=r5txDjjLwdEVDIocngxCHv+ViQCTbVpsIp4T25QnFnLwz4fbAwInYVy7lY8zcQWS/
	 vSN1eaAFJxn8cOJy9/H1AjbZdANLQOjtgsPmpgPaLgiKTkpxyNSkcfMjf79NtJT9Aj
	 Oy+Ajlco3yBKCtLiYO0FUBEh5RWfH2i0FADqd+93Bi2RPJqc3Ylmr14JquSnvVjiul
	 6t2zmuz24uDuN9eO65RyKuSn8bDvzVD1oY6sB/eqPb/0dyYm/2Bi1fJM1EjCbfy9LP
	 1JzdstAf/GK1j3Zj+2FQMgpvj6ex/lK4YOIu0hGLlljTqGsUeWeIceBc/w70unThSI
	 33+4psa7m5AKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7332C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055652874.2571.14035332843589351362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2514f4d81575f100c9b6c559eebf75f6fe0c6b280256b49d6cf1870d8c5b35
Date: Fri, 28 Jul 2023 15:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690556528
