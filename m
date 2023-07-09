Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7FC1C06
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFE9C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688882828;
	bh=ri1BEJ5h8P2Rr07zpZtJyXJirE5hlkQf7OCYxqrbnwc=;
	h=To:Subject:From:Date:From;
	b=GmSXTju5ivz2deKnHmz3Z8wmZbXTK0iqVlYzY1VQJh3PoYlRbmbBDX/ElsWVu7Ieh
	 3aW4EXqXNo0D+ALZ3Tc/eXnJ+X9aIRVXULeyuqbUchjfjlE0mSxgRyCoXw5mtNy22i
	 bXIoqGoPlgsGNHb0bhu9X67LmkUTGOXJ4IWOH0dSmLxYs5Fm94Ad5S1rYs1a5H9NlV
	 Zec3DGrgIVNq69IhgSBJyhKa4HEjNmZ1qQfhpBwuD5Ds/JHzj9KVFh6VNXPL5tl0Ew
	 Zvko+8wgK98SdiXhznd8+ty68KDKYcWS0So4n0iEiTIW91QEcTq4hC77FI1ElmYyhX
	 HBaLIrbyJRfuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09C6EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888282869.14674.9324658280580500182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7eda94dfefea99b55b9664338c12af50702f9a4a469478c2f9d65f31a1fe01b
Date: Sun, 09 Jul 2023 06:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688882828
