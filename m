Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C4F20EE
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5B0C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684453086;
	bh=sEH8A2XDUD5irLLj3BPuJ97SgrF8KMNzc88F8rgX6w4=;
	h=To:Subject:From:Date:From;
	b=rnPkxG+GzULboE/ib1TjguKYDVjVUkomuC553dS52/QcZELzoXpuJ2TvN/sC67PH1
	 KYsTjQAZhZEY0I+jzws54U8FNES0fckYwVJIC1NOzETBdcUC+24tz+Z+DgTXT68xPw
	 3TgDmAl/77YHOprbY6MBq1uLdJSPQVragKB1/BB9eMyzWQof4dGE8MSoS9d1nW6PRK
	 ID+YEzM2ONfD0qs4jWdAL2tMo5QMT/fue+6HNkkSi6mLQUWZ6iThRYjzv3Wmoddts3
	 wXnEOGyzqvf8B1BaFH3R553e5E1SiNvczofpepIqnX9hAtgqhYQzGKn2UConF0nJoa
	 cnj2ntjKYCYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FB9C77B73
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168445308579.4735.9421939716494842599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f00682e1f08db62833d401728681ce231ce97971a49563d06c704b3c678ab7d
Date: Thu, 18 May 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684453085
