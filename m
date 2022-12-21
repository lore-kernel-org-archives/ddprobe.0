Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44FA1FA7
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B5FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671604887;
	bh=MzoSlFucOd9aL+HCITUZr9v96rRv+x9X5RIPWJmc6Pw=;
	h=To:Subject:From:Date:From;
	b=chQt4ETYPAOFjbJrRg/xkXM3NQ51dCBxxT24nGyaRka5/jbpw6zMNANxHOoyotkPk
	 cpLF+gOFlQx9Jd73owREN7wFgb6Odq0byFymkTYbOEHdcy9mp+icAlzTfvm19CZ0ot
	 TrUehfwikcUmEJxJUhB7IK/827eR0c29BfR+PCO4NAes9xVJyl9D2XgejWoDhs7iWw
	 GbPb1rzV28Q0O+1WA5DHOjIe18Ti10CO4VJlnfVStRIbBc7vWhwGogG/craSmokYp3
	 QzfC2/kWjmngBOpAwS6b+mpaVyMPj4lO+I/jf+tDxkuiizb3H70i9MHUNtJPZJINaR
	 TEyvPrV8Mwn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F202C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160488738.7133.16561971273097640231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88608576c9c8917186a0f0477da2fd633806fe03181c4a0f99ab760069b359b
Date: Wed, 21 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671604887
