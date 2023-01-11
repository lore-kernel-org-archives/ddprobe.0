Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E849517D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 999C4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673412087;
	bh=yKWsgZPh89M0lLn6SiHha/kA87iQje6hnGgiix1JQ6s=;
	h=To:Subject:From:Date:From;
	b=uADjlXEkoRa/J4mT5GN/8Qh01ROB9LAAHybjZ+DNXFHfdymoBW6qB4t2QXX3BToVj
	 uhqY9pL8MasqRAJsEm/nrVHE12KZ2CwCsiVm4LPFrg8RgTNV0x67KUwENtQlYtE6AD
	 6gwCLmt80WOupbf9h3zZac+1uVvRIg7yJ9PgM4K+wCbseIPEzwe8RG3KBzNrHNpQ6/
	 I3XtKiv5nyS26ib1k/coIhCGM3zy/l/ugGksZ0K79KfOU8XskJc9u7HYbX9Damoh8z
	 EgIsEWPGJyDLejtKf8dvemJ9lqbSO7UOtN3Vo2Q9ye6TPBabiw4A5lQHFgILAY3vsT
	 9b8mXxFaceZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D660C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341208749.2873.15125436866805584797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db450a204376826ad7b7b9c155f35e43472c35e0065780a1aaca0b7a8a8f6336
Date: Wed, 11 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673412087
