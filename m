Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AFA2F48
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 02:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1351C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689991928;
	bh=QkoJW9yC1eDIyUlBXiYp3VB8xQqO3cS7C+36qJ8lolY=;
	h=To:Subject:From:Date:From;
	b=YtU05rpMYvXnAbFsN/UBZW7My+YSEqqWyrWyHRokCyXJBaChmGvAtACnonEZPXHEK
	 CYU3jBMlKv2UCf1lByC+tgI/d0q/lUuwjGlEY001g1qXKj9vphxeYB0+tQvETt9Pc6
	 fa53kDhMAapGuPG/Ti80lMzyoHMZ4SjVd5Svafx0TJqS0kUjy8NmDQzCUbmvNdUKcv
	 kWKVp404qtR24hpc+v2wZ2GvwMA3qd/P1GYjztDQFPFgJs86wZdSPoM8fCYzpMuoUB
	 9Cn7dGP8RsUb3PBkQLjsfVARmf8TuBiqwP/VkNX5J7+YkD7H4BVeXvaThY5s7b5LiL
	 KImFct8dS1AIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15E9EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999192870.31047.8496889698697983600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa8b1aa71882c57b7450a9fe6e5da9a2be86e1f574a09e53f2c970d8077986a
Date: Sat, 22 Jul 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689991928
