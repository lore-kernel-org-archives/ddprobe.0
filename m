Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EA91FD3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B600C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672557087;
	bh=Tlq7uc2UrygKXAFPFBy5d2WJfaUmkU2bzUvD7/8mCig=;
	h=To:Subject:From:Date:From;
	b=TOQE+c/K7Otbv7iYR02h+S4wAIfKdfINboxzw5DC1QEWRFIc8XwZhZI9SOH8eifM7
	 b8QSuXQneL92t3LXiyc+owvNwnGfY/pvbujn27sYbAAMeChW6DHqVEN8M/Gwg29OTJ
	 c/gRiIfXDDLVIqA4j2VzucHmzOpmn90Uz2MYoupg3T8Ckj6TFoHxgoXgPwdUHUfl6h
	 4M+I5OOHdobfFCNKdn6HQjpYGinSfNyneJG/ftaqO74RTMmKLL2Arnan3XG0hXZTBy
	 dTbdaVMM9/Sv++ekjdd1oNNTWaiUcx21M372YP37rbSM7PNqkaZj507YbBkVpnglaL
	 cNrb6ifxsXyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A73EC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255708740.30907.12962667478459068836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2b408192c79af2ff5d36e9bf9a84bff0fed9322fb85edc786151a9e0900b6b
Date: Sun, 01 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672557087
