Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D25D65D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C89C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688179448;
	bh=Ur50bYKNXE2ErEBNQTbXw5ua7pTlNO5NWr5y6guisI0=;
	h=To:Subject:From:Date:From;
	b=KmJr2rfZCJWghpuNdCkAyOIm5tlN+7RjrAGJyOURlnINBFDT4TpJ/kz7mGk1dGp6u
	 gqg5dVB9kownOMViuC5rzSWLpg9zaxxO7PdCn/oCySq+rOkyzPo+de2AMX8xPBe9tT
	 brWGbQtsN+hsHpNiGCAdbuxhJES+JHj7nkTa3+FS1gMjwvZwB6isdhSo/GB6CWrk4v
	 e1GUoYCoMRHlJmxklex3RujFtLx/2cCTkFesb3vddN2ivTASFcQmC/dImMRc9Hh7Yh
	 JEms7WNIWLlygm4ubhi5TS/I4OdYgNB9AJlXVK0pKjuozSxB9RL0L/S5WdlD/45i/Q
	 PxqkX61imby1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE97EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817944868.9597.13498042904865607917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc10ee8cd739bdff84d0215f3b09be90b59f7fc1d682500d57e75c0b59abac00
Date: Sat, 01 Jul 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688179448
