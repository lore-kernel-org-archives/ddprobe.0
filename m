Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BBA10FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 972EDC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673059287;
	bh=Gh6DclBtTrI4Fz8IOkMUf6GQafzRxr8ycDpIz3LnYtk=;
	h=To:Subject:From:Date:From;
	b=WYQozkJxmzTCODparDG7BWULlxLjTDIfsnjSy/KZ3UZvLCqd1n9q2O9GVEJWy3JKf
	 GCijkZRhfUhHnlO+87DZaJhU2JAj//5jk9wNJAerEcylZ3+b6QGUVWNrc81cUZtXYj
	 bSRmhAfD7utmhs3NFF16p8tHC82tGPd0lZYOoaQMM56OdJ/gDl7Q/csuS9M5WjltKL
	 r9uCQ/unauQFQA1slj7lOn1CHJNuUbsiHNX48Z45Eie1O4khamJ4UyaR8fvpAs+B+r
	 RsxKbqQyhQGEaPMzsuxe1teQvSbJiL4AizmDU0Rsv0zJsK3zrmyijuU3hy7dCBGqLO
	 CCbXx/V+fsBXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D46DC5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305928749.24049.12787246292269642262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12228be716a64805e353422c450785270f679bb2fc2af6e406517967dc7ca61a
Date: Sat, 07 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673059287
