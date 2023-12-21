Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5714404
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azKpij66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D4DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703128096;
	bh=2K4lo5eeEQFePBuXjqSM/o9oOwmfWxYCiFjAZ6VD2K0=;
	h=To:Subject:From:Date:From;
	b=azKpij660sjZbLHr1774oV2Ae6QZGMYVy4oQ511BNOD6HzmBWjLFmi3j/q9YLiZwx
	 VhlDP2sBmBbvQLEtigMmwESInQWxtlCoFdsqIEn78LiMP8OHJPQByuFRn4PzpWmMGe
	 5wsnn/uUXHZ3H4WHFlrsUAa5DZjr1O35meJScNT0t+AOeFGqJanCJufkXnBByDj41l
	 GmtFZM65FyZK762GEpBmNZw4kZedYR5qR61UYASHxp3IvmRzqSiABBHs7riNSLwIIz
	 YPARskbNocyvQgwktW5wCOrOj4RiYowtun7M3W9ifzCc64OTk51gMJUYpZvrfbMz5N
	 VfaPmmtjHYD6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65196C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170312809638.5034.10498075984518774798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba6b061d32d0390308b595be7105f52c48607421d20d5a5e4e01fb0de8e33b1
Date: Thu, 21 Dec 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703128096
