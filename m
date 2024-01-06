Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC7B6AA4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHMjyTvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C14C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704520696;
	bh=dnUidDipaP8dA71+vP8ABq3nuKNqp+b4TJCPLibBWNM=;
	h=To:Subject:From:Date:From;
	b=uHMjyTvtNrOC6waI+TaKT1/2OEzozYzdVzD3ewGU4shyKgCta46mXBTEomhjRNQ20
	 d/jzWndEk0mYdYI1WussLGA0GNDyj4U/HwN4wlJUHjLv7g6B0LU8hkvn2xFyvMa9K4
	 qfqY8LnWaD4LzfbRSzjIxdl2BXBQ3uMbWtdKCQU2LSUigGRPKzto9UIrXuAZs+zYk+
	 /mLlQw17GLWhQP+QvWP3ydSxle5rGko9vfOv9v9S44J9wMbNl5Chm3Q23ajYkWb+uI
	 vR9dViIqPKI1voXxkTVm7nOF0unnTJLDDa+JrUNfg/0CnTcEuK9x1P5Dpt8s/apjPd
	 PrypXoBqNzn1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A11C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170452069638.26193.8667835869073758804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b59418097e5bf60d750f8085c32136673933c8204f16cb700b67c1a6f8df80
Date: Sat, 06 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704520696
