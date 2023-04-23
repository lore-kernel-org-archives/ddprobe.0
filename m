Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9A4620
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 00:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F35FFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 00:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682211066;
	bh=jzP8B0SuD/6YsLuzf/191JMVtWZgZTk3b2QkVqRQd0M=;
	h=To:Subject:From:Date:From;
	b=Dr5Gx4D/nnxtICCRk0r5Qor5a201BF5oQsYayLLgaMCgSgncqwt9LpZJyJtpOIdaL
	 wrsvJzTACiY/I4JHvetLcdZ+COWheILg3bdqCwe58v5spZFU9XAWJFisKBZcOFwmLE
	 Ll90uWyIVazhK7ZBQedhp7KeeafeSsNr39lkcTESthu0UbxwohJv9q4btkm61r0tXP
	 J56BKxISEaiuqVCL6aawYHEkaKNALgcgvKpHuSrYeAtrhMUZYU/uXPDhURtXUDaAFK
	 Q3qWthl+E7NkoWlO4qy5EC9SLSs1mJEa6U0OxemZ7lu5Ish00DslqCV/VS2vwX5nug
	 X9u+thtdyeyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A7AC7618E
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 00:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168221106582.21760.11360001452576224273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9f016c6c48e45344710fd7c071428851e823a98f204c851d25d424c5e8853a
Date: Sun, 23 Apr 2023 00:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682211065
