Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD2934CD7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 12:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnorIBP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BFEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 12:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697632692;
	bh=F9ADVxzCsigT/G5VgdzywFdXD89723fh/3zYpUaDjT4=;
	h=To:Subject:From:Date:From;
	b=qnorIBP2fJBJ0HKGfLsTzDsKlvUdbQa0QWG8CLZIxSDxrzM01+H4I6F+4msOm/0Bj
	 irlu5iD2ghG9UrjNYQ/Pl68JHPf3cFgqujHZx4UyustpTabsjGycNQJcDzqsMcz0Nt
	 sh0oUJiCbDGA/FnYQgL1q28Ey/sDV2VXv5jRLC5/qiGIjbm0Q247GKUOg5JNVlMQek
	 +LBYPtGLD7tVccJ7cmxpl4FfeK5sKLIdp4L5wR4x8w+a1/4sGjWVfdElCDeYGfzIbh
	 uo0e5u4R4QKenP/49jRi0HcWDRSXyISsCM9EVbSiHA6Lxjy6GRA8AclxnUUpg0stnt
	 xQOF3OQjhz4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95ABCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 12:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169763269281.28150.12546058320439350341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce9db5b52df448dda4e672f57abf5c0b8e96ccfa29deddf97e2b81087bcebd2
Date: Wed, 18 Oct 2023 12:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697632692
