Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9CD3205
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1CFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664114453;
	bh=0CvrKBz3PFyE/dW0euv0tZzJdRqgMZSpiRbw4RIWIvg=;
	h=To:Subject:From:Date:From;
	b=Bgj1FLZeedXRrK4dEAkxDePe/ULljXi0M4zanUc/nlshTxXqVG1bEKzb5n8D6v6w2
	 H1/6JkjCXjDZVOD/mz5H19H6eHrX/OrJ/QzTpNR0WuyabZIGBXWUEcYeS/QPPxR8+e
	 A98SdS80UI88Ij1+9SnsNBDGmI3FkfC+bp+5dTnjsx8cq4OJg1rPnThn0oc7rEfMaE
	 DraZtfj1U+YhvpTJR23pvdF49zR3VD4zhcgi3CVq8xjS+6hkR/qJKCtSoQF9aON5e7
	 c0RBoPmQnesfZnB67Lrrj13T0GgoXmNvkorgDaUD3BDqiiZz0ua2uWlTVb4Q5nSEUt
	 XCKCnoW1VCFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50708C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166411445332.3686.9916981495629264904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520f0d02bb99e4d9b492b8a9ae7463923f4feb382ea19fdd7c8bb2f987b84af1
Date: Sun, 25 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664114453
