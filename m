Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE58395
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA9FEC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686021726;
	bh=mfJgsaeBv+5bH7CwWIopNZTmiykMmerlZyHFxRTiz4I=;
	h=To:Subject:From:Date:From;
	b=DNH92Nj0yaKInSv7SX0yHFkdgU4jDoT0oFTflDpszOjI/gZ40DBTR6FHIB8wal6yU
	 sjC/vkXlHIzs0Gq1Tw27jME0gAh4qBngnmeZmZFWiqcX2EbquMZqHjWHz80y3plVtL
	 /N4XcW9B19ZgOcNyjW13Xzr8Nuj246LLGAZWZ6PuaaderftPzO7VF3KkN1ZGdvUbb4
	 SVmVDD6OEalsYUFNAVTqu6rdn2zL6FpxRCM7pqmMN6xmAnL175zce3fiJ7+0jaqxzu
	 jWyCP+NQxhGDT5SGTAnS5UdFVhhMP8a+NcyMgx3OcCrgxl2GTQ15Bk4IFqqUSYEm0N
	 f7OcavdZO9BnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7808C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602172578.21323.3824621669477736636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabe69a265b54ee3adee9e56bfda340b6ce3605ad789fa31a3321af94ba83b50
Date: Tue, 06 Jun 2023 03:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686021725
