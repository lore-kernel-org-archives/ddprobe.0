Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D7F29CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE58C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671723087;
	bh=3rKMbkr04E1MCKqFQnf69FXoOrPFslmSjO9pYHf3rek=;
	h=To:Subject:From:Date:From;
	b=THwrgD+Clvpkn49M8fxNULQG0pUAfqt+p815t3wK1Rts161j1jwhsZYCdpkD9Dqja
	 lTAyNn7XLlgKd9lj6jI236VuC8Mxscpi02zV/ASZc7XYCyTlhQi8OBy+ovw8w+EVBB
	 2WLp55MuD80hNujRwkrsmmIWQ+yM2O4zftHvYUucXc+qM9ZdFvlkHQjDvAb7MiOiW/
	 KmCnNwJrdVVyhgZ0XnVfEF7l85eogo7Gd/kKWEyYPm3S+cANMDmVWVOXmkOx/kZN4J
	 ohMmOPQtEj34y5/USgpqm/tL5pwVX/mGII2lBAw0L4FvfKKSK9OMbKwIcXL+NIiGZK
	 Chs1j0X7E322g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AAC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172308756.29034.9616113385126899055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd118bb9899cde029132a0887b14abad372de31263f15087d32f93321a80993
Date: Thu, 22 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671723087
