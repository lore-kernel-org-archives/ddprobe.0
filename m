Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D9F7F8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na/ziQ0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740F0C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702085896;
	bh=4XsV3O8bQQyJN/Q7cqeqrgby7YhegPtAFVttPP/idjE=;
	h=To:Subject:From:Date:From;
	b=na/ziQ0RXXC7pkgPWzxp50BSrJ4uQ6gTTUYckX2CQ3xD4530QyAM2PuXhlkdevYL/
	 80WNI5Kua1iTmPJRLFcItogmySKUhyxuYZnclj7vIw4b3rS2ziPywrCkj+Ywisv0kw
	 +DteF1tXs2C38G+clAuWw4YMkkAc5D5ENhv3vgW5km+G6G0lzYaT1sneey6paaKPzG
	 iRvQQCajatCQITrymQvQlfF5V3hNe6VnEtuiqfQrzCLv+e6s5SXKf3Cpjdpn1zdKzq
	 i+PGOOzHRrxZE4DSOHaMsKuHtuA+qIA4ZiPd0MRVqPoFyyEicFYo70hK81kf8i4xdU
	 B5Sz9De2dvjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C932C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170208589637.26353.15013120455275178054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c757561c8a36136b05c87a66698aff7f7317b593ec32d2a21b3b55557d5bae28
Date: Sat, 09 Dec 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702085896
