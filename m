Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E644D2F33
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91709C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671913887;
	bh=ZTtPhVLHpKmKa/obepbq6dRqpZR6K84ubgf7bQQonVQ=;
	h=To:Subject:From:Date:From;
	b=HkU4ugBnnfdI2BBBeJq3eRH3V6c6sLML+OEaaiwDC8xR3NWznocmYen4lM7drXOmw
	 CofEpn4sCAYOh8xKcRlnnjxutk6il39G4dvKQUNnaTZDTFXoo6jIYVaciR9F+tP9Bq
	 fJEzeYxdDodISb3Wnq6B1BQTndBlw6gxlsFIYOf4JFhLdfoIvJNcMV9RR47V27vC5X
	 VCdfj4C4NmewgqHGtPAJdrvzFtIJXqeC9+y/3xwjyalG3ll/vCygzBnjxrAFkv0+IN
	 LJ7RihGK/tX7tZJ6DLtCaE2AXeb3yoPCajc5+TQUdrX5YCooZRO4hm5VWMZs9OWOKG
	 vXUJ1cNq3YPPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7253AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191388742.31643.2193689905180789630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78177219d6b6052099a26a2cd9da040ea88c486afd152e66ad7d32b8f7564baa
Date: Sat, 24 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671913887
