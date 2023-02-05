Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B43D15C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C00C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675565765;
	bh=2F+oiiH9zvniQUs+dRW9erlgWKIACeG880y+GwsE6Yk=;
	h=To:Subject:From:Date:From;
	b=SuwIN//gF/LoJlHGX+KaXFyxPtndGQNS16VjfJou6ihoMA3A1DV067NnbKWp6XWqd
	 xAyv0Uki4eJeb3WPG4AzyT0dJ6YlB/Tw5T9zT8Ik/jhEVF2YlrI5xGii3usCXFYFYL
	 rBlTnsy2kcrFr1ykYU1GiB80Tiv4WIlYmIEcReuEbMReUmQJRRPArqVRhhUxSD4EVH
	 9NNrHeEP9H96/Hit4RUEjt4LUoooJzEtioBhJ9GjH0sKILNhNajs7vC8qExVosw8lv
	 Bp/LjZA2p69O88b/KZo88XNagVhJKxKShzXehJei1Kh6jJg7cAq/rZR7YbiNeDZNlo
	 BKulVHcjaOebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49E0C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167556576576.16384.1138047382565675149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78effc5852b68125bc0fa9113d512057f8bb090cf9c31efc4abf8d2f80e7f8a
Date: Sun, 05 Feb 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675565765
