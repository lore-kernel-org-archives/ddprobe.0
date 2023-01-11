Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED40317EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 926C5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673474487;
	bh=N8gw3+ALAJZ2qBCFn4RL3PG9Z2VZ0MhCcuIs02YgKqU=;
	h=To:Subject:From:Date:From;
	b=vNSNMnZEFekQsWIGlxNWHEb/QAoq01Mtdnwfg2Q3LXRHEeWGciZn/ScBGaO9Ywr+h
	 8VF8xdFC/mpu74HpkQ7Z2l7jZ9fhCNT5oGJkIqnkXXN0yVIV+nVUd3Xo5lJDTIdauW
	 i1AzY/vqH48hJopLh80v8cO73qM/V+/EdA2E04rb3hdk1hnRd3jcfPJMb2iW0TAHBR
	 w2rJeWOE5IN1zo5lZSMKAkm2WWm1B1ucyotYwicsPZT1Tv44P9QxS4ElU7bMKbEkYZ
	 0hogoCqIzj+dhb23eiAz1SUZ9HNcmk+Izr9JCe+I75Yx8c895NTB6DCvFsB0pBolWD
	 aKmgwWyYm2l0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70911C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347448744.9015.812638563547289189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487a54001543783f16041da1f7d51c20e2ba991cac1309efb1df362e7e435d15
Date: Wed, 11 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673474487
