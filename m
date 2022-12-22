Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB45015CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94029C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671734487;
	bh=/nxgWbjzbogDLQb27qzvPjc9G7vPj5gVS4Zi1Sc5FLE=;
	h=To:Subject:From:Date:From;
	b=Cpjd1UIBLVR3acBlmCjFfw9BNxAkJoZ6+YV302eC/IF8JRHAcmiXZMf5WZJ9QOG1Z
	 OZaqBJcavkFb8w8bSh3LMxYO8JmzCm/oaCiHbSo72uFAwuvAd5Ef3yvzqiKCeJEjUP
	 gtnbwpExhPuRcs9BqH0Q9rbyWNW8Zfi5EEJ8lVDqa4zE/AXBmTO6+NwsxpeIUrskDU
	 qbmbZMLDovjDqiufJNyaLobT5gkH2NtQ9TlEMBw+GRLBWvQYQjOo1PQxIKOLhXnED5
	 ZfAZrLUiKMZIdWXaLggR5MBoP8PcBnf3hviTwzo4s9FeLeZW9OIy5QYXLp/RKjjV/M
	 HlMFMM4IhiTGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 793B6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173448748.26098.16617530958280302105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6266fff6e51148425295d89286e78c22e3f5f2b8f8c588b47dc045961579ec
Date: Thu, 22 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671734487
