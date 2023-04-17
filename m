Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C67E3
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 00:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB2AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 00:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681690625;
	bh=GUmUDqNggLWkiWniIjb28RYbgigKjGEkt0uK328DG/Y=;
	h=To:Subject:From:Date:From;
	b=Tyt78Pilk+OaqWat2idJauCW5cqP74gBOi2yT96lQzOoKz4sVGtzvNSdzsqfVf0PO
	 2E3B0GsOfjs4+FUr2ERiufWKD0K9lCjLQbZXHXeR4ID/KYwhFVzb7VFnpvOhHj9GLz
	 of79QTF2GVpTX8+emefW8uqt9H602/Py3o6YINKKOZnMLtQYXF/m0++7org0nhDMYw
	 Wrx3FKH7+PiL8WacGFkTOM3s+hXrWQZJ1+zR5JZsqn7jpdfMHh5lpCe2EpMIbVgx1X
	 qbGueldYzf1h5eO0MQ/UglDQRjkPuISiGP+y3oPUc3qDQlBlhsB4C6KBpcfBjwPGsg
	 7XXfv6P1IWIAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE6BC77B73
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 00:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168169062576.6948.9446566139487111269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2da2b6232ece1b6720bb0b244e77368565b795b2e69496fece6d511ca4256a
Date: Mon, 17 Apr 2023 00:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681690625
