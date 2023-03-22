Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2625D8F58
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 17:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA16C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 17:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679505545;
	bh=fE8bmCA3UYK+BUMC9w4oIPfKUYWEy6quU54NFDJgr5w=;
	h=To:Subject:From:Date:From;
	b=rXC9dZEUd425+GlAkUz19y5dxeOeJNZNsax7QXlTD+DoUzmexH/hagesVzewe67jT
	 kYaPQU8ibc2ZQFLPXSn3gDibUbTdNvaVQDyQgqqjMy/MiePqd//7DoJxWHURl4kcaP
	 HTfBudCR8p6MjfTVRn6h2EhENga2rEr3Q3nBYVy3RS27kmueUFwbdueTUcN1xMnzSb
	 VAkRSd05AqWqNcn2O4Z7S+IqVzDspegy3pqKb/JeM22n4nS0ekJ1KsMeWXx7bkE4xc
	 ku0aPgGQ2+UnUhnushPHWoLIi/W/krce/VZPZevHuB3Lvdp1YV/7IoBaZXj4zTmDQO
	 9LyHs6na5iHJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D61C6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 17:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167950554572.7376.11302159679742711318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd14975afe72abbccc6581ba322c5d55e0465e2ecf1ae4b3f6ac5ac0327b5a6
Date: Wed, 22 Mar 2023 17:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679505545
