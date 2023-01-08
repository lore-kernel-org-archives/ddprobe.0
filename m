Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7CA1FD0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E35BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673178687;
	bh=r29wLtc7p2hezi8+fUy6cWKixn2Oy+1GxxNla/KewV4=;
	h=To:Subject:From:Date:From;
	b=CenMOl/oLdgsZ/+W7RvZM2y92NMFr1IspNhhQr8GT1w/lNXiiJPpVdFlORYc4oqOR
	 jKw94j2/sbx9tCpYP2boG+HXD2KbM0u8p613Udb34PfNud3aqGw60qwKYc75AP4Bb4
	 EsDHqjafIzDxd0bGn5ub/f4dL5FpwkjTRMRUE4Dgj77yqdgMN5xgTOqVVLY+CoJzde
	 ulOTi5wuCDSQ9pV3FOzpGQeuDMtwF7BnYIWnXbbSD2nnh2kpUhsB3aBvCfbDzij6qo
	 Ci9aPTLYg8pZ3MCBZuzqba0l/6LznSOOOwN+Fq9VX1lFR8wUegVSfwLSPmRC8B6y9s
	 G7onN8ZgBFBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F891C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317868738.18380.8886643907890670606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718c18309d505f31972aa27bd7090dbd8e8e04d27331e4dbcaf0d1cc855621c2
Date: Sun, 08 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673178687
