Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07BA10EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAFAC433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663650053;
	bh=jWCbqMc+IywS0Hzb4/9ELaMq6ZjiTXX8p5JJW0D+gQQ=;
	h=To:Subject:From:Date:From;
	b=d3knckUmM8DtylO9qyDeO8VYwWezWtgeU0y7rXJwVKWNjs6EY7/oo7O51krEathvT
	 LKuw/k/aA8p18MnqraqwPWs5CeMbMqRd0gIY5QTV4ZxwLpb3tZQjPZHF0R+d14mALS
	 DE9WT7g8Y2YdnAicfTDg4ChfooV9iBpcBXqlkhqIhz1SmuHG+nz3PqbWm3SX2MTklP
	 BXo7bhYHHk/ZAN7Q1o9fHkjsSPRxSz+aiQKwghSMxMZ+iGRrIAE+YFfG7prHCSytn4
	 E4cR+yo8L7HnLRmjFWEm1aLFLZvemKt00C+sbBamcJCMuv/h9FyT+21OK3VvvQAt8M
	 7gejJuYBjX9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5366EC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365005333.20792.5395871765984680910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c740ca55e90db38259f0a988d4ca86c50da92b48e8089e92b10aee9294cee836
Date: Tue, 20 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663650053
