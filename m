Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3BD17C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7087EC4347C
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666310453;
	bh=ISzCQONH0vHNOjXPJMBmqVIWoDBdp4obw0stCmdpI6E=;
	h=To:Subject:From:Date:From;
	b=iIzDOxOuALg54IvsAyKYPXJ62tBCoD7BxRC+pJwd2nXtYbztahMFR9on6ox6veH3O
	 uS3NqNxpchRyxBs2K6gSw1/qwiuXMQJjlA6kx7R2R/77/xOnl3F53OtveFKxCO/E9o
	 Fv5iYo7uetkGCxpisszbaw0MY1MH3YPkqAUcE4r08z+mYFqgCFagsSlpmzAA1TpKa6
	 7SCsu4josAYys6Y42ca8yqFdVveZnE79Gx0m7I30upzzwYjCqEpLQLA9CHQoU3T18o
	 vGSMzb6V9KSiDIYs4BjM3DsEywP+bRb106oaCmaSAxe1RIW2UMvH2IOd+/aWTlTQT8
	 wD+8nKHa6fNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522ACC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631045332.21331.5868326599448697510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a41f42af0cf4bfff321f25af36ce5d090090c356969e48d3e68ceef04f5613a
Date: Fri, 21 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666310453
