Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA59A399
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AEF7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670716887;
	bh=dZLDBH0mtzi8yiWdMy3rPciebhW+BP3ZHzrh5hp6SdE=;
	h=To:Subject:From:Date:From;
	b=NiFSKRAXCHBFHUlw30+hQ5e7CnuxbhEvUkXbDTo55/aIPT4Q4DV1sHBsVMJ002VB+
	 3rbcZhqBMw+7uZ6vbrJi9xuxR+j1HIDBm0hwD+LcpNJMUQZfKOnAmLB8DsFbqIYTqN
	 AKJDBAIrSJrAH0zry0G+tI+irH8oUpt8dbUYg3Uv+XvB47VjeDZNHFq+qB+UWnRxcW
	 esw5H0Eh1BtdiN3KVqJciV34V4+vvFpifGOPEiFc7Pn1JZR+vFoeiA1cS1Lz8cE8Pg
	 6he4E/6ylRK84UsFttC//ZRdZ3E/FSE0CT/xd5ZEbhJIkrn02EMuf/lwfBnV3iXdSz
	 LWGdb8BmJ3JZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667FEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071688738.26817.15291948765707419477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347c07f2bd7f41a47740587c0a01d0dc455d184197dde1561eeb9f7428faf5e8
Date: Sun, 11 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670716887
