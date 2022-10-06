Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC117E0
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A465C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665045653;
	bh=7nzZNq46y32jvvXoCSSwK/QZNs/GJK6zuZYkfDxqUI4=;
	h=To:Subject:From:Date:From;
	b=oRDRTJXYJX5GUrc7bvO3uiE7Q06goYRWCxPXQABTUAgqhnyf3mGeRQQtBbscbxPCh
	 YWpOPn+AK8rt16DQAdcOepTC6HGBMFvst/kuUGV+MG6KwnC94hcCUcbhgjctxkj7x5
	 63pkr6bzTdEygPP+EO/tWfImG21CMfunHvSBGV4W4Edvjjyds/fUXNwGyb74xuFJh8
	 6MBMOQhLmdoCH9LeJkEDcxzY+8KlhskbioBj5ShhUpqZeOKJCin0NrQ/y4Jb3kCQl8
	 NHXYt9Pq/jicc5o/mEG5IIuLw4MrRy1kxbzFVdnxbLhE5gKHfb3LhPpwkNzPUN4u0X
	 HDdrYoNyTpFgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F138C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504565331.1915.18406137709194743858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94207d10c3c12854a128fe59f8241e0a804c25d2e4f27c9bfeda7398ddc16c98
Date: Thu, 06 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665045653
