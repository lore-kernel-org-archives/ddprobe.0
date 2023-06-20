Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E52F2AB3A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76CAC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687282928;
	bh=xgLaRENypqoQe+oZOs0xaTU02TXJJG6k2xq6EL1bc3A=;
	h=To:Subject:From:Date:From;
	b=Dc1M/b0ViAiibkrYyTnexVzZ5y7SsyuEpaEdoQWm24jLCNK7iuhIZrafZkf+W9xfj
	 jER36QVGPoaLAIN5kwagknIV6zf3KzHk3CyATkyinoplis7VJ+HqH1L5P6jWz4VqaT
	 mj59aHerOrcjQHmtLzL2Zt3AWctbmN0kyN5jpRiJf9hgMaeEeEHbKSpRBNp3qwLA/7
	 TZCwUwIvSmmUBEYtazYU2CgPm7nMCoffhfkVh8eKduT2zOW43sAQO5qQYd2KNFli+H
	 Ro+70kMYy4cLvjqqwEf0pB8j78sEgzIpmf/ohIpys154OqA4UltIb/QDdCWm8aetrD
	 nY2gsvs+OB0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F82EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728292867.4204.12034072617344168617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5cad6d4d0a854a9bb210e61c560d0fad862ba13c77381f0aed6302ab080f80
Date: Tue, 20 Jun 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687282928
