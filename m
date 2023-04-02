Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4373053AA
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 20:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F0EC4339B
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 20:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680465905;
	bh=m9bcMui1sOzyhelRwXrDiXSy7MTplCzC5Hy1WryFttM=;
	h=To:Subject:From:Date:From;
	b=AxDaATTI/bxy+1CtGO7qF0Xqu3Z17eh0/wgE9ItZUL/plqsSDsiT9gpVxKRiJIiFo
	 idKheWOYtvoHX9sot5b+ethepV/lqEH2/qR9fcBJ6N/0THRp8HznDDxomQJFtb8AWi
	 w7AQciV+PhyB9nCeHnluDPp5cXr5nes9dZSx5VnCnjYm0qOdeDJ3p4wGYl++YN+YZq
	 bO8AwTqBny5S4DyTeN8ZV+sJ1BFgug63QUx+YO6Fftjbvj45fslvDs25pLuPztwDbl
	 rOZwkc9Ar2jaSHRnFlXAIN7OQSfNtPMrv4vAlewKGLkOqH+OX9BYI6mg70st5Dwk6p
	 hxO7SQNiT7BhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8100C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 20:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168046590577.28754.7464749798742380860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc9eb13daf39de620e1466f279755ddf9a15375c25a424535b5c6df4d1193f4
Date: Sun, 02 Apr 2023 20:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680465905
