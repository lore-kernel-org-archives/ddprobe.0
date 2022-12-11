Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC9F1386
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8939FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670742687;
	bh=KHi8e4j+B2xSf8SZxl/34QDtd4UO5l5qpmZtvFF75E0=;
	h=To:Subject:From:Date:From;
	b=PhXkcDpQxQKxR+19TEvPuKRLlfPeerwzWLS8jlAUErPuXL1t+CgVLGx1a+ZhJJzO+
	 KjPJGmg4wwQN3BBBJkKCRxoptuHrvK9yEkKE8LNLEazRSSTbyedrpFd3FszwveIiBj
	 6zeIdZG6I+F8A3mVsEXSOo+D3xjD8RrhOZqZV1g1WztiEAZs1i8OV3lDSSvh3JHG7A
	 Jy1zgb1JjPxwzdRCJ6zsEcUIFrDqVhyNoP/6IcdirESG0Z9ecGz9bBReiHYN2hzaOd
	 Baa+QMRmMkDnCOUrpCW3KOK6WDzNb2/yJXY8U/mcGOYI5OjwZpEObrUNMmBeXFrjEZ
	 MdBJ7M3Da3QXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680CFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074268740.30994.17664944715662773956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ebf4c88131571c43ba0d3ba1facb6d13974467d5f75e1fe55306221df42d42
Date: Sun, 11 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670742687
