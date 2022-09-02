Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D606CEA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2A3C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662083453;
	bh=5NSqu5e6IKkFnsM4cMRPu0nvy1QJzcMmEtdUj30isEM=;
	h=To:Subject:From:Date:From;
	b=WAE0eMsIfozhts8XBwBBO2XP4QIk/ro+/fjkjCpiJpk8Zd7dYxDWf2MefAQMw9KgI
	 j67ZNgtQ1Re2vAqqpX5uzXGlCtciy5Vbpqa+7BzbAG6nP1zGb34en03Rp6v6e+GAUg
	 jXj6Rc10WH+GVwS9evV4Nc1W9f4O5Uv52Pj56ixrbJnnljyswGfr6+dGnVBKQBLsXJ
	 nGqo8gwTx/PKsBVLJr2cRo6GPbss4JEvO5KI6IW82EF3IF3XwHF4MBelx/UdipEesx
	 t6+MHCHmVV2uP+ty0l2+kC2zJ/W5KcuAhwxppVCInPz+UGPXaSb8Ypg4vJYtXk8QmF
	 HwGIOs+xtscCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509EEECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208345332.3268.16684425644876530854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145f220e9152bd5aa9e42ff93f8f98f47be5e22fe39b56c52684ad86b662d2d7
Date: Fri, 02 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662083453
