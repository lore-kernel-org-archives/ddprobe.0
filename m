Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDD9A925
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05C3C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688844428;
	bh=ZH6DfBpnBW8/uzN51uycSN8NG2S7++ZZU1FWwbQouHo=;
	h=To:Subject:From:Date:From;
	b=hEkfcdiKdunFYLDBN6q5XXIT6dtE6CyxRnPiXjoOQLpWHnePPmkLQDFuEHiC9WkEv
	 KjUu9A7oa+0lXc9vrG0XdWYY9HJoFyDmd6qcWOnKPcAMcRpC6fx5K0G8o73V9UEAQk
	 66qQVkm46LQUfA3cvrAY76dOf+Y0KbOJRoRzVeJrsBkfaKzuITYWSnELi1GElR6T3O
	 BEXFtvF2rqD5Zm9PVSAqgXOkMq1mByE3p7ZGo8H0fn3jLkDn5pA1QdFuoE7ZZjmDTA
	 Lsg5PLjzdaJNnFSHtpLrdMFo9bryy4XOG3qCsAprANgvloroX8lFH4dmabUwR9evM4
	 Kbu0MNSqgZbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6A5EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884442873.6891.16733759827620193825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708f221c778338890f0d95b6487b8f597459638905c3b1cbd2618194f9d883b2
Date: Sat, 08 Jul 2023 19:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688844428
