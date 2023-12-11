Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071CF20B11
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhfRijr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748FDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702283296;
	bh=5tEw8lG5P+eYM8fTikSJ9CZ+TpAErPuWniLbt7lY0Ug=;
	h=To:Subject:From:Date:From;
	b=DhfRijr99KeTkgBAGxkJn+Bx3kjwUR2/bGSUyCpPwxOqgdSPV7OfKcyIailvBYGHq
	 eM1jPdEX/iLYDiv9hzTRVRXZWw/YoaGY0r30K8dhWwHmFOy1VR5b0/zgCxb79Rm/mg
	 VIDc6K4kf3RNScRV9raHa6ZvG8LoOvLNJ24U82g85g28zN/6u4OCBLnJ0d3EfbP9qL
	 A4YNDHiT9VMgpZoeNhYK7i6/hH5L+CjWEhQu6Y4IgPbHYxIbHWRMYaBJacO9MLLfSN
	 0YAhpXpo27nFfOvuItJsGLmnZ8DIciHqx0WlDu2oWam+26cR3sO7JKOg58lgZeWcpO
	 KWr1kkAiRIMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6CCC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170228329637.3839.11831532434605187802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7320ccb4f02ee3da27e55c8b3d19eca1f26c3fa085bc2bae9b949007b658313b
Date: Mon, 11 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702283296
