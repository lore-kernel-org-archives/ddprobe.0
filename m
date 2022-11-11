Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2FC27737
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71ADFC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668204054;
	bh=mdues+Wt/f0EJYfSyUHYU2E1us9QkdIlIXq9jHhNn7I=;
	h=To:Subject:From:Date:From;
	b=lda/66dNRRSbcByvv8dmAI020cGjq0DT6INyOlZJ6d+RQPyvj5uI7tBtDR58vSj+E
	 6nxrJoHDztDzxcHb+gYJPDzxLrjlZIOJ8QC0brquQHKE8Yskh8izgqggkHpsNTMXJu
	 cLdEt+yUxZEXPvCgNhZB8NJy2Vhr4wtL9IOkGmA3K2vo2yMTG2B5Pn2hSxaeRMbSbe
	 fwLUV7x6S/4EWnvcQtZ967IjcJZ5KLfSuTMxEfIvLYj94KJcIA9/nutae/HKx3lshN
	 bovhLET96H86oWfqMfXqfoU5krQmRdKt/wCa8xUQxhqKBCC0+HQLQyBSDO9tvgo7bL
	 OfVKP3bMno5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D15C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820405433.32551.17790326797056826079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e06e76300f8816c3398956c294dda49b663fd5f989d7279e4d18ac2bdd2dd50
Date: Fri, 11 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668204054
