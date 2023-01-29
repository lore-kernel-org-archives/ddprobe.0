Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37842BD25
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 06:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAD0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 06:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674973385;
	bh=tWjneh5LPiz/OqqvzSWKjVKkZyoVOmoQYgNmEjAQo68=;
	h=To:Subject:From:Date:From;
	b=UUAeMSnNnEt/wLBHlBUJGI3RBBltzQFw9baj8O8NR4q8rf54xdq3jT1vTbANYZWbC
	 Ik6AZJoCsaPPQ1MoDWbduEpkMx+WvQG2RCxX03f5/wawdfd4QzWJlZV6jTdYNDAe2T
	 8CEWS61+S452rT+X2ICk8gWvN4JlP6GucG4TlRViCu9RXa+XUST/6D3orJj/qP5xzB
	 IU3Ko+ckCyGaCTPtCrLfuD+7oO8QFOysq4HlpI6DPpllr3ZouMex+nGQsZvuf3ocQF
	 5Oxh2DQeIBuAzmoxlmrvX9fKPlPBPwnwWNcf9nMlg1N/r5VClmgFGYhEedPC6D3qwK
	 m/OXvzMCkQR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26F7C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 06:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167497338575.9991.7250674269432089682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac80e68c3e2d072e4c3dfeec2f4d3d52758d8cd93a684468ce176d26504f08e
Date: Sun, 29 Jan 2023 06:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674973385
