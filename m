Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096553172B
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ4rTd1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81801C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702481896;
	bh=phNnnZRUQ9lY9gXqrcRes1bqEyt4qR2zBD9WB4rTBz8=;
	h=To:Subject:From:Date:From;
	b=QZ4rTd1EA1jOvAQTT54prLm3RNKPIaAbqYMWubBSu5JkEch2ghD2opC8U7Edny8Dv
	 qO8K/Be5/q1PaBcnXnhNZJnx3GHY5WHTpx54DAJbXdnVLL3IA9YGTsWNEXPr/f0lW8
	 GLap30/ZCuvywh2M0G2b4vN38sfiCNoYsX4KGhWjQYT1R7nd2JSbuLqiDtP9tQKzIz
	 qYEpIL4J4FmHyGD4qPRN7g5HrC+mxx98q3sCQFp2Xi2s7JbY4rivW0H83w2z4+p4lD
	 8mP25TiZdv5g7Iu6n8sHaXomZ3ZR4Kiluski9xYKXB7AsXOkWH8w6LNEGi1W8E18ct
	 NLqcA/f2kty5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D911C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170248189637.31583.14370731482880125179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edeeaff47ff9d079c27e2ebaa82612e8e8713ee7d2988df39ae582e78774857
Date: Wed, 13 Dec 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702481896
