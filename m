Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09003F4E3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxonbSC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F58C433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705309696;
	bh=VSX4Psoeqx1y43McUN32jYAwKWjoBQFc+pZZ9j/ZqoM=;
	h=To:Subject:From:Date:From;
	b=MxonbSC5x2YITwVxr5NBvI1znCrWZfC09gMdwXVNltt6k5IpCyLIiQAMJpUzUF/cv
	 RHZSemoIz9dzrKLXO8bZaLAd9t4h6ymAu5ghD7MxbWkWVgoM9HQlSWSl9rs8hMQx8W
	 kczeFbUx1hadnOhN25Wq1wGdHEAmuTGNHAHuyXhTzGgbmJUUJxMg0+EKGMo67MLxPr
	 IFiLhkMApqf1O1We3vUNxww6TL72htWSlt21DS2ZsrKUO7T9Qlp/gyLLG9KzcFcShI
	 l+a5yg7ytQgYsLLum4q/RHdiI1ES9ECHyTRNvCddpIeWwB8FWEmsmYL6aF2RMo0yyO
	 ++EQE7VSjH63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D27DC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170530969637.17162.12523089248717031450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc75871da42bf4722cbf32d8a21d0f425b788ff4f0d94534eb0659b65d8d22b
Date: Mon, 15 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705309696
