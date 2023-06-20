Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D96B2AB3A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD75C433CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687281128;
	bh=Sca++IB402+CUcr6VS0tJHYjGLHThgw0z3+NUj0M1oo=;
	h=To:Subject:From:Date:From;
	b=Qp0/YLhFwg2KG14ddMCvyfnRPrvH88UdY2K5ICkHtUm3HxAhNd9EKCVs5r8yf/FpC
	 AO11tAkGKz4FKE3n3Ll/2UKCTHgzG0UBYAtcyVa3nleiDdAoYY7jKMJlOU0JahOWzq
	 fdSNXtCDp7xAm8gEJiLlblpy9j0VKhKe3xtXemZanv2bXKcTeQWQrEVeeKN1aWInW1
	 ITzDWat3x5VA2F+HHJNA741WDB1OW0U+9iky0fDPysd2lTEvYONUHjWu63VTeLYjYU
	 UU02iAq1EBaslAkajFerhhFBpwD6F4p7eaLf2FFERwdp1clCxqhi8gcBD9rBN5YV7U
	 JxuVdu/d/Q+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1FFEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728112876.4175.16425913678553500481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee43206fee61b105b4a6e0e550daca7a27a0a6a8c9b9866693306e1996d45164
Date: Tue, 20 Jun 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687281128
