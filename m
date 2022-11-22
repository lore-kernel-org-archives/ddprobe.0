Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD16D1848
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A62BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669112454;
	bh=qiKOJccLtDySKrCZ5x1O6PCYHXwt0F45Y3SVDMyCwlk=;
	h=To:Subject:From:Date:From;
	b=aK6DgHZSeR//JA7zMaJ0jFwtU2dk46qzTSilZLb6uVbY2wQ1HdUK+9JS7PNHDLtES
	 ZFIj62PMoQ0Wnb18w8lxr60s6lNiJ9o4wOBHTqKGUvjmjEqMy+cVE3PRdO2mKfbcZc
	 OK/d3pGSe5xzEJMqnIcyTFB1b76y4PHs+2Rl9/cJXuWSulcphZnRW2YEiKk55A7rb1
	 6s99DF7Uo28JpiFc3Ij2jzQrFh3ggmb+1+zwFaoCd8EBU2rXjzTwf9vb/d93tA+Ovu
	 JgwIqk2IK8HqIHfEZL/OUKBg54QbscgITb0h5fMi5D7Cpv5dvkS85d91aRDR+f/qqG
	 Ya+Tge5STWL8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DE7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166911245434.28804.8802801604337208241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b917caf64a7567ae205019034fbc8b61ee72f34596e561f116b91f104402701
Date: Tue, 22 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669112454
