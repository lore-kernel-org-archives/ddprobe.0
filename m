Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01EC840C0
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asr4L+Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EF2C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701985096;
	bh=5MfY4gF1aMw/kK5iQW5zHozTpiPGf6QttZuLha8k7gw=;
	h=To:Subject:From:Date:From;
	b=asr4L+SdJMb3nRtQET/R/RVfyj5qTP+LSBjFDgH9szCKuPuFNpvfvT0p2aYnM9tDj
	 G0SJJy7Aiq4Sgk5xNKIKXpKNxCD18T2bvVZ9KhfENyqh3kLGPbyNcTKtwrNajbGM3M
	 Wg5nwEyF/fU38Nn4lLEDnD4+obhKqCCJFuXA0zpMumB5LHqLRyNQuqRfBZR451PS8L
	 kiOTn5xzNjDxg18huoetVqDqjGcXTQjscEKUByNt3dpB5h1RlWHyyckn/cB8ZoVFm4
	 7QqZIoe4jhvWZe9o9E4CgeY99d7CVL9SXdM21XAm8VlqT+bxibrfX6M5EIQXnGU4A5
	 hJpmwR5WPwujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3AAC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170198509637.29675.4569819352031590664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7ba4fd805b04e3f46dd5bde70d8a7d5a20aad90e6b0186496330825fa8c5af
Date: Thu, 07 Dec 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701985096
