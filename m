Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42CD4C3D1
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcI+aQA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77389C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700660896;
	bh=xR5awRGmpUlmOEJVDBOmOiV9MPspRIs1b3SxNCI6jrk=;
	h=To:Subject:From:Date:From;
	b=dcI+aQA7qV7frJoXZpaXaURFGVVdPKFS2xNbJ+RKd9bXy5XTzS/2Oesmf34K1w7E8
	 AQVGt+LrMUdsft4WXsaKfr+3f5MBLhjKn/N+q5QdrXI0quG971f30tUEiURnGf7AXP
	 2MyZ//CRyjZroM/xIpBET/8Knz7khpnXe0jCsG8qEhQOC1WZKVxw7gAEPSkWzaQetb
	 GqTjFst41YNjpqKT/lH36zr3ZKObpBHBjk8sdYJa7suQge+AxGJMrm5erQ2+mJh6wd
	 AWUSTB/XNkD4pRHbKvZs30GrHjumP67RfGXEBvPn2IamysrlnMAIR/w75wH7iyLAEB
	 2igs4R1FQDYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA03C61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170066089638.14609.11861370105824870835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa298f11e8913666f58c5b1590a378a5a4a34440afaf60345f36167a74058e39
Date: Wed, 22 Nov 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700660896
