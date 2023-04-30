Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4778437A
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EF7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682828165;
	bh=T0FDwSrQXQmI9uyNGsSZoBvqG+FEgJc3+8ZazNBWJ+M=;
	h=To:Subject:From:Date:From;
	b=evfYCbjI7SO2YfszUCHVRX+IZCmAhkf2Qu1RuK0P3clFbI8aSBKSwb/JoyAbY3jBz
	 pMFpXKSmCaYIDSd8TW9XppB2nTPc3Y1dFyhemn65uV2qL/xtuFVfCSJZ+vvajaQaCZ
	 YhFJwPuibZR7Yg23HpyIYrBR77A8IeM1uBqSqCqMWsuAKm9bQThwhN8jlu1N6SiR6q
	 CSUdQVeeA7RflVABOQZw0rbLsdNtym7yvYb7I5aNmA4W78luOw8RXuKHIUDfXj1nfq
	 rqqKVSDUDYKHd4kg4GK5cjaezlG5JiWaU6mehnfLrw643cOEoVvIZse+I0GWL7jR4o
	 Baa4dG3+iSVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9273C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168282816577.4638.15621549461384641509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c4f95f6917d0fc69cd6554cb904a018d8725ba1daa964da1bdf7819d5ee42f
Date: Sun, 30 Apr 2023 04:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682828165
