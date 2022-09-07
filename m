Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84E17E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90046C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662535853;
	bh=I3gxODKY55C66X6QJiS9x9euswEfZirmDzbCHNPtiWM=;
	h=To:Subject:From:Date:From;
	b=owutbHEntDaiozgRPRQ9gTPAlMUD87/dnGtjbEea5miWoEqpvR+v2PInrRxsKoqr4
	 L4S4FwtYqzuc35xB4yFK2GxjhM6zUo8HdbhmXaL57zoFiS1xezH6P63+SI75f/2pTz
	 AQ/3rkQ+EZlTU2VV1YI+03EIbOU9G/OcaXWQcXQUt3/fzb1a9FZo/RGXBoNcsVY9aj
	 0kzoOzSUWouxvK+iTOHKfZ52pYgs+7IL5KJpU+oDYiC0NFvzX2CjAoHE3vAuICGVli
	 gHQI5DKs0cwBPeovTkTLCG1SrkPI1uatiGJScXclnQMlkOgaJq+JT9yBOQXOJZBMlf
	 C8hwKRf/MUYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F082C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253585343.17187.2810473211025685726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f731dd5653b3a6b8c8071e084e5e6fa043b3a9b70b4861b3ca9c9d5bc5db57a5
Date: Wed, 07 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662535853
