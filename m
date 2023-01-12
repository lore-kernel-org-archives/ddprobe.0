Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF771646
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD9C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673508687;
	bh=UyszJsjguEVB2ae4P4VLttKUtBa0BXEMIto26QPztZs=;
	h=To:Subject:From:Date:From;
	b=iYPVYcptuSxVaxMzp+umP7FlKQpRmjbz179eH0F/EEqxTYg/diSx2caPvQCxrYgYm
	 P8AOU1Ka3jhqyRIJYVnpuTq4fsbnsVxl9FMtcV8/dunxAslO1owzQROLvQFiJHJjop
	 wlRlyvz5J1dywWiJF0pq6OS9KNz/V2Zr97P1Cg7WQSUU4o0EwcjRUl2VYXZEWrNtBK
	 s4ec7xd0u97RCBOObEewMZBTDDvoSi/kA4d2sF3DFKy3YmQWSEq2gYKCpFLLD0AmN7
	 5Lg7+/c80y94hhemDAFB7+9FI0cxRg6PRn7f/ri5+Qd9EqgQF/YuqlHnqgZgZ2jU9K
	 /v6FN/FBLm65Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CD39C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350868750.8614.12932204989427618108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedc790f329ac5f364ab3585c7354a0654bd72e5743e7f82135be71cbfc8ee71
Date: Thu, 12 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673508687
