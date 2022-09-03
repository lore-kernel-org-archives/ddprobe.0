Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0421363
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7FDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662167453;
	bh=5a9xk24tDzfcWzNDQoi8JNm2EmxGCxMfW/hixLyXrO4=;
	h=To:Subject:From:Date:From;
	b=AItZzLPYurZ6tjOf77MFRKzg9COYNhb6XP+1wnrVAQLA16C99+PhU4HroF4HdLEO2
	 H6CH1ovAT3px8Sf6rTF6beY1+dAOn9EqRWPNCAo/aKAhk7nL3TG4wloa8/j3KV1pSF
	 PNJSUudqbwBfs5mc+/dbgXdvVrnQvonFa839qVE2jRwII/3G29ojMJLeCR3nSEQjoN
	 rmaAF/1e8xG7Zczjs3Kpr0uvHgHb/8QKI3VN99xHy69ikfqn6Ydg7FOPg5Qo0zpY90
	 6xsa7t4K6n9kcweh5zsc+bZhU6d3Xut6MR95we/N+H9FAFms0r2iyyDNTGuNnVLT0O
	 r7yVGy5JIqK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6F7C38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216745335.26462.17378257612340502172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d8d2895bf8e64700b0b47beaf9ff1392d3fc1e96607be9ce4b80e55566f51a
Date: Sat, 03 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662167453
