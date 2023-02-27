Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3829C808
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4C3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677490565;
	bh=etKG3w4HdobTgLFzaDuRsKV7h9HxZkLYicdXCq5X+BY=;
	h=To:Subject:From:Date:From;
	b=cxVPmffa2WQFpq2cxMxo0qUGRjnOwEFuRIGzi9chE+X8STE2aUJdp9PZe6AIrKC1l
	 4i7dHlKD6zwu7hrepM4MYaIjZBxFPrIw6+zLJEl3M3E7N3fCFu6+ZjVvSBv+7wLbDR
	 zVxfEge5mJjDCKGd66qUbipUFbQgLBN+3NTX7FGD/vWccggCHJhCXMAGyOMxXM2j+9
	 6avLRO8WeidovXQOFx6guzxDDEb+pInDznQ6OVabp9dasBH9CjoKFBpLZI+wrgIme3
	 ZO/bBvpiU0nLU1tnYAiOEiuRhn4uoAQBm2p1LO21K8X7dtjcaGlI6iD6hjxQZphEnn
	 q3artvWoc1b4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3BAC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167749056575.24024.15293533058504486080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781c90dc527bc4eec59f6a3622585b72a2cedd2f62f95f91c7f68b219ff82a5d
Date: Mon, 27 Feb 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677490565
