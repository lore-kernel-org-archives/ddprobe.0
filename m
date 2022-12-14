Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D1B20E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81801C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671004287;
	bh=5ehGgLNtkMAZ4dPVH1q40gr1YnxPE+ehU3S8CRg3r1U=;
	h=To:Subject:From:Date:From;
	b=chb3y8N9lYHejY8DFwEdLYeML7NeA55iUP/PwyqGY69HK3iSlTbuypC7+zu0qwW2Z
	 yksILRsC1pqFhLlrengPsP6d9AMqC7C75etmCSAbXpRvI5jpTEC3DmseZ0teliq4JU
	 5+ccsl8hxrnIKilCmibx0iOZItrctkUc9CQaDIQpnmAjCGjy6te5xn+XeLpqp7BelI
	 Qwf+luVF03fRmTDu3lVOs9FmWJkEHGmNeOXX0dBSHm42ft8AU9SVCfuvjo58fPjyGj
	 jXe7FORz9NZfUedj37ZHOE07g4d1nyFtLhl/3NpAtr+I3emSig/zAcu7KdEfAl5RX5
	 GrGo0NaUE5f9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689C6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100428742.29598.9692411472999828700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c71dee9ae07c2c4c6cc9169c55c9fbea09f3c8881b8bd28f059febc652299e
Date: Wed, 14 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671004287
