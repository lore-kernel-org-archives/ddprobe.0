Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8997373
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FAFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671237687;
	bh=RhFRkrVqIxPR2jV6YD/tDdSnpebDIam5K3jj3wx+xK0=;
	h=To:Subject:From:Date:From;
	b=XwQCR8kYrPkU8QSrVd8bBqxChcmpsNLlbqpCUtHIyIdGTI8FqYKyut37sAVW70v4/
	 AnuP2AuIT/+A3A6X2BjTHrVjCIEBZHmXfB6z9oyMMBtZFq0EdDJmTILcnZuMzLTY6a
	 dfi4y+fgh81d4tIEZtVaxgmE/QJ+XhpFHTz9ovjGRm0qatNgqj675fPdXsK293XXHv
	 c4s4W7Dja/CdhvbCXp2nu5Wf2bBL5LZO6Fuh0UGnhih+uHRnyGCWUJjY1IodcHDAHw
	 ewg2AyGNUCU38avSGllk2n/3BvhSDkfQqFS8YCu3QxZhWXVxJuZ1G9ml0QSadXZz4b
	 HA31pQcHC+cqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC58C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123768737.7375.6434829537555272629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc14ba4c301817ec6fdda6f686ff15bf8c2b148d34f2b1ebc333795cacc8a38
Date: Sat, 17 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671237687
