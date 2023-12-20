Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1928A24A02
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np6n/VJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B002C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703075296;
	bh=sXzIxg7r/m35lvo1iTiZvgoK+II8oXbbb5rTxLbarbo=;
	h=To:Subject:From:Date:From;
	b=np6n/VJDkBXtkmAD/PzHEMPb+TQF9EPDEwL28wyHPTWVZWzLKZu+ZqHqhK3Q8nIoQ
	 wNwUYrpW3exzRGc1TMCggztq2tJ7FCgyw2sWbTr7nhCOeSROkgcV6qOg3FVr7hDzQ/
	 fY7/WOHdUx0pkUfhrUQTGnX6WK8nvJoOuIDHNjWhvTnRr9sOmBUB8rjL8ZaQQN8WUR
	 VTxHpb1OF6GIpauwgZZHmyjFQYI06iLLxsiDdkZn+ghRtRufbsusm0NH9DYiId8PrX
	 fFFcUDiswc7NStd27+gpouPLuUgBCFM/9D9KlzgMJwqvPxQoAmjQX/FgScMwrvOI4y
	 k1lVWgcBgsPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F3FC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170307529644.3691.11919281072862655800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab883990412a168a5443ade22c55f35b5033d87968d588979866d0f301519ece
Date: Wed, 20 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703075296
