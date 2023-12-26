Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB4B5223
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZfeFqCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B073C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703624296;
	bh=q2ORR7Lu+UtX6+wKQAdyNMGrZj1C4hZuCCWCwnZHyAI=;
	h=To:Subject:From:Date:From;
	b=DZfeFqCDMH7Amn7L9ZswMxltl/aMfJACKrEp64BJrwku83LEZdf4cZkhWV/G8toSg
	 nT0qOP/yIRRhrNtdtZo0crlZe+yfO9ZZ//FrId+1dZKin19ah56H2rS2MKWZsVNkYy
	 j2bPC93Zfu9/E+VVsRRjX+fkiKbLMtrr2/j383UY0MP47TZ0aMBlE3TJB6oIXiGUqG
	 MsZ58GjKcYyYENYhMxS7nNd3qwV+7498JVRwsP7lOPLTV1iRgkqYFmPFxFkw4N6RE0
	 8ZJzs9jWHehhK1vTiAF9aESFohqLH9QBUrSYcVFP6qGtueHkhuxgLaHAk15W4r+PnI
	 o7ZBEPzHbU4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661BFC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362429639.6472.12060951104553181513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eba8557019bae04309a942af6247edd7f79c3b7e6625c6b30e386e008dbcb7f
Date: Tue, 26 Dec 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703624296
