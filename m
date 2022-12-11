Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17D71363
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBBEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670736687;
	bh=y4qF8dfEavDKCA+wpbfTvO6qdvvhZ6tpgcK8tJXkBvQ=;
	h=To:Subject:From:Date:From;
	b=HlUzU97+yNbiQ9lKA98gDEwrQActSPmj0gTNFaVH972W2uoyDeC9qiObzVQKNKWQv
	 jjdnHmUUvfwFkH8yiN5WaofxX7vA4+elEnS35s7KGKPihk9CjotaXJwmHMK5TO2LAk
	 jR2YK01Z7IF9p+f73TuHle0R0kAdGpN88ju1jXe1GmEL9SQgbdU9dHM/LoCwQZ41JE
	 B2z9zTivygUx41EeQv40U28goRUEmM29Z8iAD+Q2sMObYH94atbx2OThR3j4ciuSHd
	 AUL5pFS4+eIac+XH10vZdtlsl0Wqu+ylkBbxJQsFs6o1YOlTvf1GkmnoHeHYIbkDT7
	 hw1SqpWEnCWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E30C4167B
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073668739.14224.8373576313242845780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b469cec8d409f6222556e121fea80f395d7ed57975dab198976216456bfac3
Date: Sun, 11 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670736687
