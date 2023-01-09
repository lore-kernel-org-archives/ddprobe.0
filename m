Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE80433D6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84110C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673281287;
	bh=8ia5y1/Kw3tSLhV6nclxpqb63tSY1ejhZcUdka6taRA=;
	h=To:Subject:From:Date:From;
	b=m5VvjVPzI3GK5M3Y+wgEE4Z8PhEB9lIAmAek/xKddj6ZtfovYA3OKnlZDSaQsM1P8
	 cT/B+3hWl23KO1MeL4m5v6AxdOhg3zerP0eBSkRwsP+T0oxYrljzjOMd1EiiZPJIHE
	 UJi4pIoeF1e8VN8yh1MfvAvyfegxbIlnxMlSxcHZhR+XbwJzUityKlo6lZEpNVuIMX
	 zeE26Lmqamrwf5c5X6Oh2LdXH/WOCoEHZmRdYZ41CQoAeCw2ST7f+7lafbtny2ztS9
	 LN4RPzqy6x7HV4mZaYTVx117x1UYBXa+2aTSwpuvq+vYN0x4z227YHd8F/KONrzxVW
	 g8/33OzraJ15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5C5C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328128742.21771.694968035263881314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec9950c4e7ed79bb5165db8199cb76dbefb7405c661fd70f2c351be8325001f
Date: Mon, 09 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673281287
