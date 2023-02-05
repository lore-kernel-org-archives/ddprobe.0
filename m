Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D9527716
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 21:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D846AC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 21:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675632965;
	bh=slnibKNU0Qkj6NEteSY8ZULGq9KZQOfepIHpPPqu6iQ=;
	h=To:Subject:From:Date:From;
	b=ZpyXR24vrw8RQ33dJG9ZZQaIn6umzC/h+HdO2MPn7dUASrNPMmEhazO0THoWsMAoc
	 fXLOvVGjASwN/tvvI1r9VePcrAu0vkz2uXNJAZ29OuRMn1S1PBb8BywqN4gVTjtuvS
	 CvVEKsGFwECEDcDjptr5UL6ci1FRzJOHtVaGw/GLr2NNHrLskAmMX2y7fnFOtYmQKq
	 HwPNcVhOfPpNnxfc1KVJaOc58aGSptFmCa3jH2D/aVtR7QYp7dDpqX/Byk1b+tTt61
	 rt7/OP3p6h56MGdATyM6SdfdlHCvJ3vGWBfMu1JQ7E/RPC9P5Ifx6yeO0GOKzv3F59
	 W+whZ85RfChVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9602C636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 21:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167563296574.3720.315037436626981442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309c3bcd0af82f1692923aeb90be26c2941dd7c0f56eccb7cad5b4f32420afb5
Date: Sun, 05 Feb 2023 21:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675632965
