Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826AA79E6
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 16:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C1FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688921828;
	bh=IRs2HH4fWTf+DEt0/tU2gX8GiZhTxTYa4Y02cJ3dPZ0=;
	h=To:Subject:From:Date:From;
	b=S66SPYsAQekOv/4M19M7UraiA3uvAiwsaXfMWPoe4Lq4mW5hAnp8vmaShj6ogO7Ac
	 Yq/dS/HzEt5ut7eKksaZPXCbt9SrVWm1u4UqyjRH3nm92LTA6qEz+8nqhRhnHUMjMT
	 ENesEKNEeC49t+Ikh4sNE3Ym6IVCB/orxq6sGKKT87UBxJQ91uOstcXo0XKzxjS/B0
	 uD6ZjNp0eQYSNLmGh20FMYj75Slq0eH0Kd5P2PAcBi9gBxJXdnTBCAyTxHuhFKz9MG
	 A1WLJStJQ1xYSxPPWiLkyjCapCHv8aq7bD3buiwqOeukxsHkz+/A/ZWfltk4j1A1u1
	 U7w+FZo0sewPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2563EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892182870.1987.17942619839879990190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c91d0775a5468814be44ec77fe14596b6d852828c9ec18b5008b1aea0fe57b
Date: Sun, 09 Jul 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688921828
