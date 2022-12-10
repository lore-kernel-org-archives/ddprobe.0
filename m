Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E441109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CBCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670674287;
	bh=Azscc56xNthRcFiKyNDuycPWzQtV4umqB3NgQYaiulM=;
	h=To:Subject:From:Date:From;
	b=a7ic5uM521SPaQapK1yJDXarBny0tB46KbsPVg1pSFds1IGT/4y3peUyuFSaj7vqf
	 OZp1+8KtRuyKj43aEMK0Ai8r7ks9/t0ywp5sV7qtqreQnLCPYtQIkOuh0yYydUriwp
	 qWQhq4ilo8oipomCT/j3AiV6t7htiuaG5URxBy1Xkc8LCWc2BdOhW5gV0DzMc+60t3
	 g2oyNaPgr+wxUft89YjnKPhUmz1N1+FEv+Z/rdNZEbsIH7YPBqKdqxwTbPoPm0feEc
	 DhlIH+1SXWEi/bOTtD7tpZr+ZzGmQ8H/T9QDu7NrkxlxrGEwxR9Plbs+JFzNLNEfAu
	 /EZFgiLM0ld+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65662C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067428739.5567.4381757796506378869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0eed2caf6e804ab9224a210b6c85b60a7f1c8e4ce8218a9397f84788fd26a78
Date: Sat, 10 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670674287
