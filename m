Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C896A3D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81993C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661521852;
	bh=EEpFviVrRT9DnzRu8j7WyV5Z2N2VeMVmftv1ZftMuEk=;
	h=To:Subject:From:Date:From;
	b=e4TYt0iW80USh8OaSm4ppw2221IzO1+XetRuxTRMUDlYYN2VhVS10fQofbuIgG9g9
	 yTeJRu+1n9kcI6yuAf5+6IyqCZypSyqRo2TMAvFxsyM/UQr+RiSdEejp0jEfoFGT8V
	 BHZkcuM8PAnoIuwYQyRDVt3V0ZDa9MRnqrzVUE1Tfe4FforbUF9Jl8TP1hx/Q+AzIL
	 xI0DXe4RR5Ta+C2XYb18d6LN9ZcNyd4M8kSwtBdJXz06DwVGMHWOcmNKPk7SCB3TWV
	 eXq+/hT+tqm9i90O0IWggpp8+qPn5RFuaKzEZbEqUIsAwfdi0fIk//kM65Qw3iut0n
	 Kh9AxmkPRohSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AA2ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152185242.19697.14734793542183740621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109d12312e2576a0880c149a64497a07899edbbb643ab21ed94c729a0623c6ee
Date: Fri, 26 Aug 2022 13:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661521852
