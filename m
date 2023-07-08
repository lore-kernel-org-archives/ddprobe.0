Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DB11FA1
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C550EC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688804228;
	bh=ViFnzPZQdzMb8qQxcllr1AzWT+C8DviaMlY7Reialvs=;
	h=To:Subject:From:Date:From;
	b=imlcr1Nvmkd5muiLhEkti0cmwA9J6R6tVlIUBEPsrYO/L2m66KihgtqZKOVvd3OIN
	 AN8Qi2VQdnw8Ivc2Pmm3zIrz9rzBMUejsOeLAmGSzOTF3g8Ng0iB55xwl11aK+4Xij
	 i6+ti/RRQmswN1g3tci0smfn3LM2y/+MU+tQ+v66WZ47KA9zTjI1VbaJVYoZWtimvf
	 TvuC7CPnPrGLwKuz1SgyqL3SmP7J+KiJMkJe0RoN1kVbZnWqy67lXVAzhExHO2f/6g
	 XgO4xgdwBsMLuCZdjKDPF/fJ3dKhkVgoBlXoFzfr4Vn6LzogEh6Bc/4rV87pdr55Pr
	 OgGf9Dwwu9t6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABABEEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880422868.19299.130838064430888651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71790150294593b63c3535f20fb3183a3cd9654889ac5ddea4b094bc99f4cdfa
Date: Sat, 08 Jul 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688804228
