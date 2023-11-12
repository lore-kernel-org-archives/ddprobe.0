Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F7D17E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbCZT98F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8471DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699756096;
	bh=7yzmqUEF0CAP5n+wVHxercMLVCRiGy5PET3Z/X5s6Nk=;
	h=To:Subject:From:Date:From;
	b=PbCZT98F75vleMpNYqjYbnNm14dt5VR/GjLw+5tWLM0vmXMvmmIvtbO5vHkqkd+B6
	 wtCnO9q22r19huFkzB+7dAj2x4mOwHhR0ro6vKTWyQB0QVzD9ki2sUdhDPzwsOOk59
	 Qw/eEosfJ+BkRIqJPgzQa8V5/0xS1FhW6hJ9wSPOFiPPR9w3ULAr/UVrKMvhKWKScF
	 LRGWX8T1QaLTCEDUZtlvzsjnLYrxr04193vCXl+AAloRnonMZajxTRyT8A7NBoyd0X
	 d41rkBisTKyak0Dv7QYV/lQc600q8RuCUbOEXUaQDbXJSWCM/vBeQPIb2rzpkSCj7V
	 LlbIleScjLf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A568C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169975609640.21173.11199776861366002094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152a8f06813615c624549861c326d83581d9418075b175eb46fdcb083fafead6
Date: Sun, 12 Nov 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699756096
