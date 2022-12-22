Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D781023AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F9AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671745287;
	bh=K8TboCEk8lkXk1MSauTPWjOR1E2xUGNZLxHMXo1pYQU=;
	h=To:Subject:From:Date:From;
	b=aFyuKEjPIIlszQBIjKkiqhHQPvlJ5Tkt65o9nBZ56bELFMf3b96eMe3TTfX+/pDTD
	 n2MnLZVRJK8NzthLDOzm6tr0YWm0QaOXpMIu1Vhw691nw+2XNDvlawXrpjBcPbWNpt
	 gW7qEzxj7cp7wV2LrC2IK99vXE4+5DniprF/f2W0BW2Tjl4Z+9Vuujf+P3MHthmp9y
	 F8SLNDLXZKFUuShJQE0Y06hH7rB4Gt4jlM4MYwBdcpdJTm5L+1z2rjGGIZTe9ajLHQ
	 Thn2k/DUWcFSDRr+2G68j1nnwptC9HfrpAUggbbOPSW/vRwhWMFX0PoTM6YEo/VDOr
	 5+1uHQG/0de5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6BBC3DA7A
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174528743.995.7523992969585315285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90cd832ba5413348386afe6454714d65df143c23d46f0c27842221e076e90bff
Date: Thu, 22 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671745287
