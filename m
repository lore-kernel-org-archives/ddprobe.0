Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C15520E7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F19E3C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689736269;
	bh=2iKvWaqigwfbYrbyMu128lfMjOqE1/yhaJVkEKcS6ac=;
	h=To:Subject:From:Date:From;
	b=Ifmk21qmxBVkRqPZq1y7uPt49Xhb0DsZs6py/lY/qtKIrf+PBnwMc1hcw93E9kmhI
	 ME4eLEkZp7QgAzM/GSST2A2GlvfTmvmaiam0BAhpPkCFCjZxp/7cDd4Rq+sL+isH62
	 CgK08PO7ExPG5qsBtI88daCk1Q0SV++ka+ulZXpxQxVJ3qyJYJJ4dgpjHKgQFMQA9q
	 hw2ONSgrfq2Mqw66GrjMaLiKd7A8ge15xnNlXOuVmhOgpEFbwVFVUjlk/gxpgdody7
	 X0pnC7NgDFhBCgHQw5v8nLOnE+DWW2ZfIEveMhFEJO3nhH1PFwkyZFCgWcvu6kUr3p
	 p490B/JyCCTaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7172C0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168973626883.8580.14233946823578748585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399a5d2176bc390b170c93beea6503d7926d0dcd2412246c828e31b19d9dfeac
Date: Wed, 19 Jul 2023 03:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689736268
