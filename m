Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4797C620
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04E2EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677629166;
	bh=uCy2PeZA9TftxMcdHSUg7AfxG8hi0zrerk2Fkf8LLGI=;
	h=To:Subject:From:Date:From;
	b=S8WJtlz8QjbCoHrcB9OWYiMNmNuImk9cV9g449y7dPoeczjQBMAzIwXVNr1zzewqs
	 LyNO5+ojWsptDoTVj6ylZUbaciBFvc1WH+8BqbpDOfqvLvDeph/M6Pcw6U2a2HZbjQ
	 EncfzPY6/CxKi+BlFn+LBzg4iFl9IPgnEu+jMivrI9lxJi9yk58AOkGRAOmFkjxAF4
	 dORaRMy2HU+ZKJ2e0JpZWvUC7dO9jeWPUP0tnVYCkyGPev0I8Boo8W0GpL1mWwf+xQ
	 XvHZLlShsTE0jfRXcVEgKKrCx6CG+G77Z+uIlt++zaoWZgJpC4IdbHsB40MKMGOJQR
	 TetDMT7fU8Leg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D295DC64EC4
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 00:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167762916585.9785.7398778770078630746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae53098e86797b9ff41808e401e40fa4f74cc723c23408c528519233db66498
Date: Wed, 01 Mar 2023 00:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677629165
