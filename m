Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517791EA8C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 17:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3445C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 17:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684950306;
	bh=5nOlmpo+QWGdQQMmx0ZXzIhofRIR6/0bQ/cL7cCQVHI=;
	h=To:Subject:From:Date:From;
	b=XeBfg4wzTNIQOouQuabUHiN8ZHclANbv57yzb8vSqWFguHafvZfC9nrpN0/KPenUV
	 zUuaBlR9SVweWZWyAN6v7UTCw0INHA/EC3Ey7wIaNwX58cm5Vm2QjAXnAURdFWOGil
	 JM5+7MsHK2x01wl2Ssi1oz6URD2sIBpQC/Sc/3aq6IMubkJAo4HgJtHr9oPxIGVK6K
	 qC8H0jgAnVSj0+Y1kP4CB85Ru5lOW6P1QKbHiIeeiDZWqHs6TfMQfZVzDWkN9TZBCA
	 bWIdLGWq4rpHBAkJJu7GsOhjSI6B2x/ck+AAj7MKm8klKh3j3zIAEnkTvjVI8Tvr+U
	 TEfG/eJQhvACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F3EC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 17:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168495030577.16791.2822068925078380045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aed7f319dfede80f9ac4b24e78e3b8078c0ef6c2fd2a73cc5abd7ef814046d3
Date: Wed, 24 May 2023 17:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684950305
