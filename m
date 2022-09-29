Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C18EA9
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA8DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664416853;
	bh=3KO1TGdYpArh6bXJ53j+mBqZryICY64J81904pP1pH8=;
	h=To:Subject:From:Date:From;
	b=ihXCdJaSW3vHUO+qViWQ9QlxtjKwL1PzE/Bp08z/3/S2SwZYog1U/fhOgOt8m3Tmq
	 2aZJTfghFUe8eocCyTtEniCRAaNszPkmg/Z8f8OIgOcjH9w6vrSmDYxe6dc+gpMOfa
	 K6xMzF3e0VwgFUNhF4BvAesZOVgvcaupUxiSF8nfevIq0rUemTGpN2v2110lD36FUf
	 5U7elHEghpARXVZooYYMfYaGKYIKzNrrD9Qm9e/aV+t1+YF72q5YgeUcZ3YclJHCdP
	 G4+aJyHyyldicvVZ+8s7Vtcq647DWZngAQZXuxltM5DteOvD3XNn0VnkOolQ11v8B6
	 epECE9ScIAj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A52C32771
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166441685333.19713.9809291710970292582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574e661381ded52aad5efcb207c53ab760f29c3f27325b5382ed8a3f88a4406e
Date: Thu, 29 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664416853
