Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C64ED2F7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87C9C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688739428;
	bh=knj56QFQLK1/aKm4zTi1thGSxBdx+Qvy80wBAyxRqOM=;
	h=To:Subject:From:Date:From;
	b=SNNkW6WYe7oqU6CXUd0GA5vURYAtaTL7DGLQNmfKzMvSvoTHSh4QBShIP3A52ebTs
	 pZXbcyKG1I6JbUjwy9Yjrb/nMYDNInC6aee08DDh7Dxbz3/nMwvRjkZWi1u4DkEyF6
	 ceRsfTzHZWD2ubzr5HfBV48KxwiiNSXbUSlUxLkpqyGmrA7r/fosrb+LvEkOiMkwLw
	 5uXDWiU0N8SnMJVZu1wqgmW1puexLfxQ2im5UAnMkD84jEmZYdjnZDbnQkyCEgvB/h
	 ZgB3YFkshs8Z58aKzhxnS7Z7ACup4TH2ia6kUKffGjYRhTuzltZEHWDK3VEqXdWb3L
	 OaK7xuEzo0kWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF640EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873942870.1878.12323530951492284764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ada14e2b7cdb09f89de2e65fb5c123eb46f0f5df59b545814eb03728c26a52
Date: Fri, 07 Jul 2023 14:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688739428
