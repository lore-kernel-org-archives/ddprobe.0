Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3DEEA8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4823FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686522786;
	bh=qRzE3h7w/l2hVMY50SiMaPyisEA2f23E2s+4wzbKYDk=;
	h=To:Subject:From:Date:From;
	b=WwZK2qdraH+K39ocNyGqFHWSDafVQ9V9QQQ9RPtjTdYJ9wyTTSO3k1UexloW47NBU
	 80glL7oiuwJcpaDRaPgJmYi3TUJX3k6Tes9TQ4977y0sS6DHWaoVGCvGj095eIcgua
	 oLu9y24kHLAWUIOxGPWhATrjPw+0VIjEul9cK78+yl8T/C9wig9ZPVslJrtOm1DkXQ
	 IvvekitKqMF6bJLItbZkchvV84oYbih3MvNGTK/u9wDUlzU39CmvQahoWcpHK5v85N
	 JcCIyvwOmig4MzQlZT81zMWB7UynLWBO1iNMzAf7n38JgmtYTv+JxfQYGG2W0sBR8h
	 TK0TBOUjWJCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9461C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652278594.9370.9462128036912330865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802163dccd5c35baecd42d0391a04e3267ab60c9394ac638462c87397c9ca45a
Date: Sun, 11 Jun 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686522785
