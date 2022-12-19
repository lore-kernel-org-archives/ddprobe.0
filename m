Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20CDA31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D588C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671412287;
	bh=xEMmrRk1bQMjcRByaAkIsVz8TwuOHfMShJ24F8oTRK4=;
	h=To:Subject:From:Date:From;
	b=BjYuFygmOCmAbYoT7zIKCDOu3ri417iRnKZ4qtwBXUu0r0r89HpMArPxYQiiXR2Ra
	 /giOBjGjtLk1b3TbggQL+kxeZ26bW7Wv4Kav29qVyGa2y+5OvA1D6xNPK4+U90y6XP
	 41d2jiMnVQnQ5bSaOMy9IcflFVmC+q8M4sRqI3gW9hJBvJrsAsSHbYvlxf411GRS69
	 R9M+FqO/UGzrKi7qLvlO2XHtEwZYUX7Axs4MNwpCvNTWwu7yrNvL/iCj66J+TkD4Ti
	 rI7ATgFJN4ntvkeW1otdOVfZwBb9HyRbzRb1OAGTr4gXQ+a9w/fvByswodo++rip1J
	 micp+T/V5YCzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6431DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141228740.25754.14774762230008920755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466082f6e90e6fc0f698f2456b0c1aeee187632e7ab920e6037b6406335298fa
Date: Mon, 19 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671412287
