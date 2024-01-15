Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E746B4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2WHIe3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828E1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705295296;
	bh=MVmt0qpsZ/mgqFdIQotJQVcvI0fZ53DSPsSkwzKSUCM=;
	h=To:Subject:From:Date:From;
	b=H2WHIe3bMRgRMreQ7SxJKa4FzaEfPOj2vVoy6sbvUXRzVkj08bgdKxnBcjjO9+C2t
	 DZOIaC6CE57vy8Jhh8g1FlVTEgK9+oASUWjejfI2AVPIEvMrLtNd8ua8tWLhp/cEyn
	 ibXxalvtoP0tmSSrwSbxosj+hrpU1lJBFJoS9iuMuibQ5q/R/r25TYLhIbRTQLRxlp
	 /lWo9jQ2uplpXYTUC/uv0C2KJNbUnBdaTcP37cOOuOoQAAjiZPUwk6Ohh3dFjvzyHV
	 6PA9zERJ1X56ufkEekIJps3eM8+NyDxV1f8FzzQA2PQsMAJ6WB52i6M6e75+sAIuyD
	 yyLD8hiAkXUGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68941C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170529529641.19320.10212915161061637251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f903a33ec395a2410281bb4ba15f83a22ad588fea91d749ba887c027aaf58499
Date: Mon, 15 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705295296
