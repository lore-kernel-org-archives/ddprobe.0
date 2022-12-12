Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48D423BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84728C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670842887;
	bh=p9oR6kB8cD8pUONQC/D+tdbcD9iOa/1F4+cGOrl/158=;
	h=To:Subject:From:Date:From;
	b=m8pDGBLT++usjY9Cu2ZHjDKbZA9KNtL/Qaf1gfJ62AwBe3dloJ2L4u1FLYAaPykJx
	 +wUGbfN9OqfBglx41PXMkFXt/kZMjQMkjFW1F5SEW83/qnQ6JA6tkD9icpWIswdFCu
	 cPLkbKo/8+U/X7zqKuvcI8zcvjt0ucMfkXihdyOXOLRxCIp+XIOH6IZCkabehFkMyN
	 v/u3bHKhOQ3scMr0CVWCQchpfr0KXkqLldH3fQbRLqnGupLdDC1PYERz52ff6PpuNz
	 2ujLf8PxVdE22RwYXPLIJ6EKFdFW3Iehmr1F0CrUbdUg404/rnGDSU5loAFYDb/wX5
	 athOJZ8vcuZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6518BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084288740.11897.18355191778523236646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2886ad8933313e5f89018d050f65f8e7f723e80ceb939bb54711251dc3fe7d18
Date: Mon, 12 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670842887
