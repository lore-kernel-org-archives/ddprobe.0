Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B403C02
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB05C4339B
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680444306;
	bh=vFdrRp+zg+3/zkpjOWKHG4rSjblZiVwIaHyRAjAK9bg=;
	h=To:Subject:From:Date:From;
	b=TAJPRAORoZk83MKGehk9C3hI1jKqoVwZdTypVWJPingPmr15ef7ftFghoKxsA8sqL
	 CzJduuAyB6AFlU5aMR/VwgJoX/ZhWlFiFpgQuVEWjd1elU/iv6Md1otv8ryPWZxA63
	 wMtZf/8LN151yG2pyxI5lvVwoT/9C/3R4GFUwK/9hRJ1428SCwDndQKWgj19a49biD
	 OQZtzNf1xhe8mDzTBLIWUcC8NTbYGdEMg+Dx1KKhc6Kkt/fbK0tOO/tZzsFsDWBR6x
	 ZMY+EK5ncVVUrfFEu/Bz5HVht4Rr1sQQ6E0EHv4xKCM0Ll+1seqIT3Fz9eOcA3KTsy
	 pGgxlZeYBfRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C81C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044430584.13344.7389105874136415781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc61554f4444044cf2db3a7a9be9a7f039007fadb5de734f9b8f469b77562d95
Date: Sun, 02 Apr 2023 14:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680444305
