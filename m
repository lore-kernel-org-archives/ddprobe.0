Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EC22905
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA19C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669488654;
	bh=RhuvlO1iHpgWp/5WE5pGtlpUrzuH5B1PM5UM7HTxbGE=;
	h=To:Subject:From:Date:From;
	b=g/wp23yC4G5E+sqXsK5lWJfqB/MWLIExbPdm+QY3XlQ7Yh6JseKk8Jtbc5RIf7+RI
	 rD2bLjE7Z+LuCbsfKJ0pWpgx0XWuQFPBGrBFtj2Z8l8AkqGD/++CNw57U57XuBrQgc
	 +a4qp/l/QDJ0J3vzwgfFZ/sOYFvyPPCcXN2HGFG+yuN3qTTXhDp9DB/quLEJcEnn3Q
	 638QefzIdWwZEr2L7taU3FflHabhQOpRqfE7RWArRZ4pBiF/QzMyi39IR1TUSQkN/U
	 qyqkakStSWX7SXRoLlJ7nEjVeENm9zk+SMXiXBdjFXfgPnFwf7hxBGpcy+7BpocvH/
	 ZhPFjHZypKojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C25EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948865431.15643.15262180685278182517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd901b1609a32280768c969b66e029340b8df1cb77609eb46725777aff30be0
Date: Sat, 26 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669488654
