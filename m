Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1425362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EEEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666497053;
	bh=1H1yaMiFz4W31pTyKNcQUrPgaxsk0+5w/bxGSERAbtU=;
	h=To:Subject:From:Date:From;
	b=QbXRj/DQGMW3SRwOhuvhHT7Ywq6D9hA+k5xsCWTIZmngCzKXgxrACpHji3/ETdCHs
	 vEFGVnB7zY6RoqQkdfvtBVqzzV/YsRqm7t0I+dOpUMYxLh1dCOctKUIPwVrpeaQUJJ
	 m/tg4KcQAmSWiztZyKi+wnKwKhPQZj+wmgJk/e6pep52UgvKCOJPPxMO7s898F0Ae3
	 ZhvgBDaBYokpuYCbQ1CD7tn9IwzLDevxEzGyNbpYoxfnLw/+GS+Pt/AXPjJCZ6w+9N
	 vr0vr3W96gkZhnGmMixdR25F6K+bwwtUBbnWokLy50lmNycDzTXSI9MWSJw/eLXyPr
	 I1fK1Llwgzslg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A684ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649705333.19529.15165763450187484385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbad999c3de228b5bd3a1fecfdb3f7b4cb3a948a2790eedb4d982f37dea11e3
Date: Sun, 23 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666497053
