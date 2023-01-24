Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8057C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674524585;
	bh=zzrZn6+bb2MmMLHCppIpHWuBZnaxq5+pPn6vsJDE+f0=;
	h=To:Subject:From:Date:From;
	b=hIaBhE1qh9ohRkzO9a1YeO6Ag44F4lbFkX95AiImFz49KaZftI+2zFqf1SXBDj+p1
	 2hVC7de9IGgW5M2vfznMgdqv92cev8WtcfKLvCUxoznoXQYNkPIvz4kb5V/Pw7+WQO
	 2YIc7aFhQWD/lcMJMP20DUCSN8SnV8YsmY3EOoFVMk/mysaRthZnI+hwy8Z7J6NflE
	 prng6mkL6zm+BmXguf44R3qFdmcfI4pPiE9SZqLwb+NbZMhozVFNRXEm1m0u0DrZQa
	 Siz5FKWH1s15rFCM8V7I3dcgGrCDQu36fLPbHi/Bfq8HZTRFFgW2gD/mK8+F2cBQJu
	 ET4Y8MOuTVPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEE9C05027
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167452458575.3320.15024413943924316662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109d8e0555c868aa14f8897b20d7cb9f650d4c0798cfa24c250f41b2be02ef0b
Date: Tue, 24 Jan 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674524585
