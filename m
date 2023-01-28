Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32658193
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCDEC4339B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674867185;
	bh=ASPbVi98bOcSgptmZOfRRTvzyk29g2g9e6GSMf7PWME=;
	h=To:Subject:From:Date:From;
	b=p8AEPF1NhbRePC7tw22SO6mIO/gnq4p4Uy62HBLEwwMjhlQMIxWpJDeCmcjETCPDo
	 mNAPjW/awEE0r9pnFu0qJnGSjdIniDyW4cIQFn04+tr3cDOAmzo/sTrwfc+h2LXuP0
	 QHUPoaXDepLVhbz/NV8Zs6FGSxqhJVXWVRTEzGVqkAMe1vNAJfVrgjTEUhlDUehs5D
	 1RtpxjJKnXPgT8kkiIC8ywpVqMGRiyOUWknlLi76RNakj29PsEAh1qBdFVPwqNj4Pk
	 BGZzZVY2mqxE4XZ9pUkG2ogq+Ojep/ekH7e/MYcJiRPbGtbVYMV8pGhBJi5rXEJ3rc
	 OFAGV1SoaOQBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA62C54EAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486718575.384.3254663761217257608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b328b7538b06c95d23d2b45d403619f6c000c3f3c9c46601c66656648dd5bc31
Date: Sat, 28 Jan 2023 00:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674867185
