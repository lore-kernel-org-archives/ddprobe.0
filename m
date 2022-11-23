Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE9133C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67D7DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669237854;
	bh=WC6Js2f//hShbw5Qq/X/bKcwD5pE2w0W/iap3XA4e8M=;
	h=To:Subject:From:Date:From;
	b=Ej1GL3YguPVadA8VPxHJp5xxXVGkKuHnLmbUYADs1EfGmQt2odMUBDU/8F+V1Obwl
	 TyY8y6r5UgF3qMu+qy7gRNM69sTqZHPwzuyWR1UvXVf7yQpIiZK3lpFf4DA/ODjess
	 7sRGCCbYhjd+K8w/Oh+IgqqG2qcVDvHMjAIooc9svEFpeUTYWl7P3y1qKUb86FZsKp
	 0IyA+9/WHTgSFUuEnAChRBq6Px3DiIZHX/rhScnId/139oWryxZ6pTXspbGpeQA5yW
	 JtcZI1zQGEx6T2XqfgjtzmDkQm/twb6igPRZgHUAkTNeB09y6C0yvtzkK0w+qDcv/r
	 UiycyJVEk+Y9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522B2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923785432.14923.12156194870589976503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c7372fbe67c777ec30f90066373ebade2355d3292f04baa7cd53997c309cf0
Date: Wed, 23 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669237854
