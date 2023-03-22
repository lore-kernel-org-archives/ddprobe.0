Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B958C01
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 16:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB20C4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 16:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679501345;
	bh=kNGGmaFlEqEul38vj2GbhlBTBsfzNPY3D2UdI6aW4D8=;
	h=To:Subject:From:Date:From;
	b=mqTX5J9dkZXiA43/ylyC4rn7nffZ4byF+hiCix8mbXTE0hZsL+SsdXmjvR7S9AqMJ
	 BXNxvH4+16oVvvp+zDMUl3RID+meBDM3S4rmAUTRrxZDIaXA0zq8PtLJbjGfa8VKy3
	 8jb0c/K2T4NH3C1izmaBcb2rbN1z3vC2YybPSu/DeyrmCGL4Y83UjckTgDbmLwbvSH
	 NfuS7eTr0vyQitc/ZoTAvwMqFQqaxXcLnnzIK/af3pNPJjQ/RMvKo851gwMhzIeaAy
	 MjriYQz8j9HW8QlG9Vmv3WTBf+pmJBxhh7FLRDEIOraCLNup7BSpuH3Yh47SR24Bgn
	 nG9Szg2Xa6KdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A50C76195
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 16:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167950134572.16268.17734977068895844517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd1bdcdd0a713ab22c25194aa4c7be277c39baec89051d2577ebe9f755c2288
Date: Wed, 22 Mar 2023 16:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679501345
