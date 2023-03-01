Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BBF8491
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 19:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC5CBC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 19:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677697566;
	bh=GwZtkxjdCcj1UZ+tjEhb68dKhqP9LwJ7UTDpcNZalmw=;
	h=To:Subject:From:Date:From;
	b=RxMpZ+psoPhwkYTkv9NQSX0b2wcl9JJrzHcrxxmDYYBdRQdI2iVlYP3JWwXPv9rgf
	 kJXbiWw7z/E/kzKz7bzSyicd0kHZY2cvrX3cylxth3qysEiK7EijXNf7sYMpud56bA
	 Eyss0eCouL7l2VN+2Z8JGAzamaDm802hr43WyQves8t8Wnp31Y5KnbMxkDmSxHVDBs
	 JPuxqPezpHi2tGOud9NVkvgDU5Zhj+cY9/tak7JlXuP1iQqT6khqOpK3n84Ka1xLAC
	 AS1FppcLhKt/V9wUXFtL/6Od2MHm4A14YzXKQP6R8Bmjw9u5oDvq2Wahtdn456GOAh
	 Ew+1MxVZrJU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E75C6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 19:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167769756579.14524.8239524161246000063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c271df4eb109c038160d1d07eebc78eff3ebef3548c7415b61e03ae97a573520
Date: Wed, 01 Mar 2023 19:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677697565
