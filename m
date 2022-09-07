Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAABE7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D80BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662530453;
	bh=lD56E2lLFRePVAFPHAjSavrtBU0iXw9lolNpt8E/Zsc=;
	h=To:Subject:From:Date:From;
	b=aTGU5oE/D/sQK6vmeRX28KpmXiywZ5B+gIqiWiquJkLFHVDw9wSlULUjfEBdY6MuA
	 4OfqHB0cHx4CZ0RdSae153a+PRujB4TRSQuw5KhYxFBOZvGScu7Uvyq9p8Zkm39mq7
	 qWEIt4xzBkMmYdFQCuTh0+kyWVN54vnlinCiOg/UHFRcH2vbJ1SCDX/SerP/mYNtTx
	 r3pz+jP53XlEmvzZeJs/y84BH9uzmz5pojLMhvnXZ3frXmpobjGRQi0f01gfSYSztI
	 5BvcfhO2NPR5IFY8L+FB+rxxYUuZPik9fInWC4KlLc3avMHEL3mqkq2/fD5lZYbbwd
	 AT/3xDUHq1E0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EA1C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253045334.20249.8863596938416970395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e3f0005b03ea5166e7fb814374ccf60e02a2245c1ba97e068c8950a28d2c19
Date: Wed, 07 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662530453
