Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6FA7EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856F1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668937254;
	bh=Xsdwl9iF1rH9ckVPPs0W6jf/TzUWxYjjtTwzU82FJNU=;
	h=To:Subject:From:Date:From;
	b=P6pyavwUCdMhGqNipfpISlMYjOhKG6vboynQrzTrN5xCh4tD3Ecx4nI6UElJ/ZkdA
	 V/VR8T2yBiO6u2EkLZLJYbAg6FalIjiXGStY8WQdFm/K+wTqNCg05hdHNQt8wtVZi1
	 mbec+Nlsca1uP9ZGejkKRUD2fJA5d99/9nEXETiQ9SdI7BM//7kbM4/bs7SAGhPN68
	 /Q932tTEDIxlHT9b62LjM/CCGCJXARHTdc1xAB5VMx6A5Cpq1EtLWCYDV33e+6sZJy
	 yXeic5AjHXsQdKYMSsLrEFL06Awg/v+CVVk8t8Qff0RvVmWzjifJR9wqxUVya68lRe
	 ujdLoEA9UuGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694B1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893725442.2720.11625321934185865758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b89751db2823ece0c350f5f8d712d8e850561f448dc97b220f9f9aa9551970f
Date: Sun, 20 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668937254
