Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4565C168B4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D163AC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688145188;
	bh=zAigRyMu4OVZtv3CQZD72au7GzQa+DlD/6SZytrIJhU=;
	h=To:Subject:From:Date:From;
	b=hoZ8IAl2uoChr9Qd3/O/8hUpEpU/kuGWLAcYeXrqtmMkw935FPPMjV5PknWQ3qPqX
	 46/kpSC3hl2ZMIxIbt8Hbm94LP4BxNGp1vzSxvj6uc8bWp4axxRXkHuGKERmT7/WbG
	 jq14BZ35Qr7GQpqVHZ0NmnNF+MOY59vlNbkGufazQlSzEhEOwKOZRp0ywJiPxw5TFS
	 ZrlUEUxTq1FrDXkhRA1hS9ASMPUp3IolbzZ990iZLSfuFVJD9c56sHhQBYNTRB4+db
	 bfI57K2CmIKG5lmKDwSytXxVGbFHcc0lHnPobejsHD12/4JnJ5XSWYEIlDYoJcbgBD
	 WT/0+o0Efdb4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38B9EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814518872.15354.11759916132346286390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a5c1f00d64cc7d75b5e5f6c03278c29418b9e8861f8908ce4f8f5c55d97f44
Date: Fri, 30 Jun 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688145188
