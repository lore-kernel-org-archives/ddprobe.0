Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89637C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF43C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661618452;
	bh=o0YSVd7Tpl08mPFDcvYNo2oQWHXkpMwxQGJHmEZsQaI=;
	h=To:Subject:From:Date:From;
	b=phc+sDRhStlSn2tOdbV0mSfTS2Lf0y9UXYkbRv+cUSzcBW6jLs/mAyERQdXaqLhXO
	 QWNtCwJm0D6+fedu9dvGki7iZiiyPUtlWKHOID1XLche5irDcmQ8zSiElKAn1ihbnt
	 L+3j1HpdRKTGZRoqehgziBNumdc9a0RAoeqWvPSwQEHb5v7KINN60RWtRKjPJMef+K
	 zH88QNjqpw44kuBDBzgrvxmjRJAZ0MvEjuOGXKhNSse+g1tNT23IsVAZIrMo0VvfNn
	 p0f91js6HiCwH3gJhMT8eTDtY1VzD1tvdAAs7iHBZutGSM4kAUa2MZzjk9rF6qOyFE
	 epczMfRjJS+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543D0ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161845233.26843.2004597475461571574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d20b1367b7998669d1a1588981d23b41fc664d9ad30624c80445798abd2860
Date: Sat, 27 Aug 2022 16:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661618452
