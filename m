Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144A918626
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+IlH8yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888E7C433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699034296;
	bh=6ifnBD2lfMyzf5QSgYu0p1bKJB7DuzeQ5Y3Du3WqIjg=;
	h=To:Subject:From:Date:From;
	b=Y+IlH8yzUAkdc9mAny4Lvy9JGzxYfNiQTcxWhPlsx8LQzDof+gX839oac+OKlaHs4
	 9p4REsLwvnTCQU6keobNB/rHCOMkkUwbjdHyIcJXLfZObJl7FPJhszcsl4CBGu4SA7
	 8+cCfb7OWZ97iC3VcCca0BQzdCamr9gEeciOOyuysnrs5IMIfgCBsQtsgoVQeGbASq
	 bc1ozXduJWTPgOTahdaB1X4ncmGz3m+/Acquph7LhuSp1M36uRZ/NqxPcFs0GOEE8h
	 IxtMQd35Ltb87gRMX4IRL/rDtVZmpBohVsK6rUPVVXLxf6vbCXWfg8dxqomBZ0rUjf
	 lS9eioHrouQWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E63C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169903429639.2099.17963776606285899765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c115eb65c59d7d2a83d1941371e4c10f6743cfff9e1a842d5d2e69c41bbf665
Date: Fri, 03 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699034296
