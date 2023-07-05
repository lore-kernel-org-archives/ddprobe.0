Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5237B6FC8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C000CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688562428;
	bh=lUVCXqMxjUd7B28VxT2iXusPa4tiID6bOv7ZO8HBKpI=;
	h=To:Subject:From:Date:From;
	b=IA+N83sMotPRel88ak+FNYFpJXM6leaDbMwYbB2PJ0oogcjHY0kGaDkloJIaVUgB6
	 C8jsmq46qOFw7QeopJDiq4udM2+/2MOlC6y87tQKGc+fvSFWkk+jltAY9/oJYzZaP0
	 YhXCJ8w7o42MoTltRQBZP6/HQ5O3EVwtvT3pcGS7fB02d43vErifMy7qE/bT7twhA6
	 hEQR0H0dpqvAkxACKK1sqq6ImczM1oON1JHKGeTwgiGeeoEVCoisZ3hIgsxKBcCkfp
	 /0X+g9wyaplU1JJIqagFgFFY1pRQMo6sd8c3Uy+w4I05wHoaZqPmhczL4GUWfAX0dc
	 5T2kIoE+fyeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85B2EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168856242867.19764.8912824382268837480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac998f150f1426bdcd307356f490491629b2e151f9946c235741e5f74aa18ba3
Date: Wed, 05 Jul 2023 13:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688562428
