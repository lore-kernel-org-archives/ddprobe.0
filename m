Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB6C2C683
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8rq22vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7704AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705316296;
	bh=ZEt6jXjMHQulLW8zutc7aXAo6G5kaj0tYXKzh6T+DNM=;
	h=To:Subject:From:Date:From;
	b=X8rq22vsef6E6+kHn47UQRHwrmvW2R4kZ5UFzR5lMnHWqIKCo7u3rPCemuwvhEg/W
	 9eKko7xa7s6BAY+yHo1Jy++DT5E1dSncZye1fpd5kAFrgOCC4dSiNeMg161a3eWhOs
	 X6ay96XAvtBkKWnZuWJ8SMj0PrlB9Brpmb0LFn29wzcepKzROob5mGbjNK4tNpYFpa
	 3Zd4jf8vT4R9QbMCwmxaa/86xwiGVtoso0S9cocirlKhxIMBWsKmWMv/JLy4X3ReV/
	 VhjobhCZjkItEO3E++tEk6eFPvPppSTUsXEVjWcz+bufeiT4P9LiymtamKDCrQfb3M
	 v4VFNYKmnDLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF03C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170531629637.31000.1911728093885262848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f612901e47575a965a2a45b8c8ab90b0a90a458d591b3fad9aae099e23cfd545
Date: Mon, 15 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705316296
