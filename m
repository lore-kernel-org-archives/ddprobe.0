Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C777E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77857C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669518054;
	bh=h/YDQRkl2uHCdSfe63DnBXukM/N7RoudY+eiyzg47t4=;
	h=To:Subject:From:Date:From;
	b=N45lexIcKvyX3/WCWIPMA5g9JiREd5Nt2DYVGyAim+oeOUX4Z2BTixKYpTAG9/AR7
	 JDNdXjNBqGw7RAC4ZXSYEDF8HgUkUy9M8qR5/fUVYTpC75CKdA5b+TDIu9TYGUljb0
	 9g71rzqZQAc9AxmlwvZItPqvFjoJkxltHdiDrR63DTX6t1BW9ax3HKWo0VywgDkPJ9
	 WxQG0TdI/FIUKg86ytG9KFIB5UCKMd0hNc5fGpUZN/we2fVq9w4bQakMDZ+4IuxPeo
	 4V1fm0aOyGzxTr3Vvk7Tv+KVzoke03aohz3e2wZkoXjc8f2ckfdUBEV6McGi0u78A1
	 79q+kvLFVWP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B23C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951805434.7637.7554099908581572655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146b8a8522f9031f3220c2abe6459694397f404b682f0e2408b0b50fdfc1a864
Date: Sun, 27 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669518054
