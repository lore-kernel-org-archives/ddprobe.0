Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58517376
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 01:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAB8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 01:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690680128;
	bh=O1HBdFLxtySFCJbXc97db9nrkOWw+c1TuE6EqfOApUY=;
	h=To:Subject:From:Date:From;
	b=NAqhaY/t6bm3VJPB3Tk1EhfvCPEDQO1xNanFRcpTVM8GOQcr+pBdxtV+sqhP/iNZ3
	 EqeFc0MX375eyAfjmQyPt++dNaYt+hrBHhf0p6cp4Er/8ZPLKjo4Km90n0QJXmpXe8
	 x6ZCnzOUambkwsEH0Oa0zb3CgK6Ir/xrHp0BTbX4V+X37soauzcv6WfBZ6lWhNcxN1
	 SZETPjvnEXtsCylvOvoMtGp9zitTMkOWG0yL1QrUy/sggVXyetZJiJY1OU8eXgUE6k
	 18KAcej1Ff56qEhHWoYlMHnHgdRwLFsM2i8DlhpkyI8stnkQg3gXdKPVWYSWzVVY05
	 aFUdTv/Oys9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FF8C0015E
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 01:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169068012869.4419.7208712405546138191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2967100ecc5b47714bc68c79aa9bef23af477b0ce36f050a8882049cfd2fedc
Date: Sun, 30 Jul 2023 01:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690680128
