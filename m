Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078DD28E2C
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSmUyDqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E79C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699295296;
	bh=5WcoZCMryvccAQbyYfp0fBlVYksK6waotOzA9ycAjvw=;
	h=To:Subject:From:Date:From;
	b=SSmUyDqqltgSeuAaO9KCRPv74FTYkgEm/mXqL5EdWhzoZjPDiFlv8CREdYVWFLpx9
	 HO7VOZyEbjCRHdPRmyOVPrBM9y84VlS7pTOhqZTHkQ/OGVkAnNDWJEOFSb8kPUb+DS
	 BzIaiMA1tT5v3YYBk+D7H8DQ/n5Fd+3JMCSRNmknOZcm04GZLEIlQWlo4PK7B0qOoI
	 7Q5BhGSA007KO/5AdJ52GxVDGggfZa1qBYDmvH644xZvzgO2Jn/7K8T/3UWuyI86jP
	 EOpVeYPQpK9OC0vZH7KmOIKUmddDiFwNeW2yp58WTgtIqjsgWXrKusdNBbgYhAvuc/
	 a1QdyTVCsbEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F22C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169929529640.22665.3560505217221282542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae32c1e5927ffd704daf8cc30f2b4faeb3274fbe23e0639bf8227931678b5039
Date: Mon, 06 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699295296
