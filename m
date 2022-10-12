Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE4F28E7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B19EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665600653;
	bh=YQKp+y8uCoOatyme8UfSJBS8xgh/0mHVeQZSdfgof94=;
	h=To:Subject:From:Date:From;
	b=u1DEG/J+vIg9aStMw4joRtUAjuffeg5EXJn+46hL0JM6zq59qCa5vjJDKn9nyNEAa
	 f7BRcMvV6N8ttLIR4Zgo2ug8U+z+0YYWZ7tS8gV9BosvYq86i8Tal2R83vo8sRn6e/
	 csbbZTZkUftHLweTvkjyIJ6pfwwHEF76+e/Kx99abkwRcgia25byvZ6QapqyKXhx33
	 giYLHYTPXRYXA95ZFfsiOQYChKiR88oiFTuy58NBceD8fDnI2GBk0enmztnkRZra8l
	 8wcCpUgYvTRgjqCDpaI+VS3TPjwuprqyuVwBfkug09NkEhO8rGYOxKKYNAzYIHXj6e
	 wbcQYcWC8EyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E29CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560065337.2235.4887958138354001550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc570452e453334f390c95f12db36cef87f06703874cfd61701c3f025899e1e
Date: Wed, 12 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665600653
