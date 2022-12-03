Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BC07B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6835EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670050254;
	bh=m7kSm7sEHXrPHWiNgIHKlA9R388zEYmgSLJIP/FqhK0=;
	h=To:Subject:From:Date:From;
	b=gOwDg5S729hLOCNMOuqy4MouYeM/+Cj6bAVbwalob5dixPDIt8+qvsYnc3Tkt7c5d
	 Ipe6TA0KU14BaQLY/1vcqx0oqacIOXbcjN86F16ntK0XqHR4qgo0U6K0gXlu8FrYNX
	 B9NyoqzhEmE4406gIuX1iYF2N+sgl6ga0tgPRxtpBDPpAYTWWHQzo7IwoPLygKZxEs
	 E+0A3f00YpQ8OrV4ZelDLsJ0xVIkUuI8iGEhUxrFPtw/tXGY5a+LDjpD3/RNnJ8hP1
	 0QIFGpQmmRLxcGGUtBGf7ZqrJBIgaX0qebzrHw/G1IatcaD4GC5eXmU+92UKSw6O2r
	 g9LrMebyFhkMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E73FC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005025431.32244.10324122483052260446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13949e2876198a8e495658fa62ae1bac42ef4cc04fccea105c42866c087adf8c
Date: Sat, 03 Dec 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670050254
