Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B724A5A66
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767F4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664486453;
	bh=vKftEZoEhPV4FxXplMa8m7Q9DdDFUtVHujAiQWT3sK8=;
	h=To:Subject:From:Date:From;
	b=N7f3xsSQnyAcKs4amr+7uqfWarxjDndfJTql6QBkYOoaX+wAkIlIfapB2iRGa1M36
	 qx6L/d02cLnZtgVR01HbTDABYxYCILTHopNuYE9ASTB2fP4xPRv+iwuARteVXdpCAX
	 pSxcq1wTfWNPmlMalThitvFOciCFxaPIZvI6XcJSxHM6uraIwBxbclql4KqKV6r2ay
	 4o6jKzRJo+GfZouSqaZrwmV7Htl9MYbul7S6puIaMUzhMwboX+K8TAe1891blC5/HF
	 3/hms+a14/xS63a+aPQBy6kBvM+c++AvHgdt5UsK1xxpVJ3TS27rUuO68PlCZ2dCmg
	 XF3K1SOHC371A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E50C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448645333.13263.5513481306912066803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e786a03fe75a8b86453df4455f17113b2e15e2495d993215541a359ca3a3ce
Date: Thu, 29 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664486453
