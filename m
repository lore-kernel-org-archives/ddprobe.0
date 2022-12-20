Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7437E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5AAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671568287;
	bh=J1Q+Hm7fBaV84jQu2505LYF1hrcHbJic3iND6Yh9R6Q=;
	h=To:Subject:From:Date:From;
	b=AFie2rm+/evAqP3yYYNCci/Af4rmjncVit8DySiBhED9pRW51YR8fDE0foOJuD0sO
	 L0VMKkAG7Ul1EiDqmv8zUPBdhSmQk8c3bXA1CD4tevMLQxSQM/ue34+uim1ifimfB0
	 sHsG1zMXd5TkZ03ifDXcLYD2lv32ijky82TzAHWTR3e+bAtKgzurrpAzAqe76wwNpy
	 B/ySxL9Tau5X6/5I4w0ZOq4qt6mKKg25toe6iwKVoz6kx0rlgmofRw3zxMuclxc6su
	 I2yYyPrntnwtGaFDYnFszg6xO6a4hFwvz6fk2b7ONodK6H5bl5eTIxCkHuqXQvDL6u
	 aAWexNxB2J8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF8DC3DA7A
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156828774.32619.14319124298857684796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0bf6153858c54b622d4d61907fbaa991c12faab00415543ca09490a58509df
Date: Tue, 20 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671568287
