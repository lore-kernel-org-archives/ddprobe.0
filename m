Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1C8AD5C
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA4FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671054687;
	bh=W89wdJXkZAcyQ9FQUJyj+tehpbpyA7irrlgkODULdqY=;
	h=To:Subject:From:Date:From;
	b=D8NKXPa/aFQ8VCdWDtJcRA/xf7s9x84JsVnURf0HJIup4ZPA8mdsiWkY9MLdn6dqx
	 OTd3tR0YS7eh+DoHv69IT5HRWTU2GJ0jRIaEKv4Ss0v+VaTGaXjnmafk4kj5RMlOoo
	 xDacCjv+A1ittZnkMxJvblnEJJ53hLJAwUrNwSc+r3Duf3HC0XeH/ckxPKvbjn++Ur
	 aKfQy4Jk63/S1of8YvhiZQE8Ko15+psEL9cMLZzzacpJDI74s0l4uSDhQZfQ5X40Up
	 d6u8+NZxUGt/QWI2tVEEYzOnfKka38V1U+dG0Ip5COX9FWVQ4FXc3c/4R8xJvA09m/
	 i5zcEWLeSNSBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAFFC001B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105468744.9436.2175913485883383515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ace092218addea7019f8711c9571b77f38e8d1e107a210b514d31f258510d7
Date: Wed, 14 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671054687
