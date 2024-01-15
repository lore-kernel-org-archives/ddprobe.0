Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AB818622
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBjlJXTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8249BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705342696;
	bh=EhwVgI0D72qxHSBI+vjMt/3cqKk6QjEJ0g1nCq2ST20=;
	h=To:Subject:From:Date:From;
	b=CBjlJXTA1giN+vYjK4vF/anlh0FVryBaa2K9ilwuN/dHr8rxnRekbZy6VRK/9pJ9b
	 X9Ex9m6yDQAoshC6XUgEh9b6x3HieD33gy0eeUe3ZJk7CF5IiuIasjBB7m2Q7ic1Ng
	 fKq7akNzCb3m+e1KqeIvbgusiXLegYd3ngaNqGGTdcVV4K8G5k+0ut/gPM7UNai7iC
	 /mPvSZccgzHjJmueXohLkqV9OdBLneH3pdwGGV2tyxTmGf50lVrUR+EhTSoERW71UW
	 /N0qMfHtACbii4p+gkez/jHp2K6VNUBKYrg6QSCvG0gYPFH6vJR+uMNBdXm7eMooDY
	 1esA/VEnegj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661A3C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534269638.8289.6033651770017666125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e78cf98efba878736cad767c36cc560f24f7338afc0215ce850d49552f5e81
Date: Mon, 15 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705342696
