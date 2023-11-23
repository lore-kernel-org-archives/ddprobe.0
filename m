Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116A6D2E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V73j3XRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1BBC433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700720296;
	bh=bIajZWrQfMQ5zxrhNVJIYmkewD3AMMFl9GKQv6YDNIc=;
	h=To:Subject:From:Date:From;
	b=V73j3XRDmf08hdSdtqiErbx8Hk3hyYvE64ejVidD9Bj/lwwcou3qoMsTxl71UxUiq
	 R0VwqcwDS0CkFzuHLdBo/1nkuvvP6zk115nm1z0sFn7begGHgJNs/2ypMEpcAB31BA
	 ITJ2jm//P7IuPKvVysG2IZYeFlWhEikPVYAcPj7OEQXExMhHNu6cj84fIXuqQjYyXr
	 X1tdHnvWtaJEFeSyL+qB4xeSGJxr9WAV0TtDAaa6KG8+WV+X73FMHW3yUiHvVsxRWs
	 +NuqoGMdoGOHKCkDTfyhz944GZFskbgWg5E+H47BHdZ5u0zljTPMydrUUPY+B7/7NB
	 4sPf0MLOxADwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F108C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170072029637.13046.498329683576384363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02857d5405f31785b7817c50f677d67d4374387fd2b520164635f389660cc70
Date: Thu, 23 Nov 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700720296
