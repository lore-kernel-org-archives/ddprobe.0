Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC6A3A290
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qW4lUZRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C590C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698165496;
	bh=Hr+ynCb5dAzF2O+QmCpzvfbf2c2cKFhKRpDCY1euzKE=;
	h=To:Subject:From:Date:From;
	b=qW4lUZRYW2AX7ltkVJ0yXmFPOJz72fKM5iu/bNQLqgnlxuL/OtidUIsRe23vvLEzO
	 Vf4dFedRbXqi8QKzJdb3j9ifwWO16zAWIgzTHZ26Zt+9K76k4juGXuGXzO4kpKF91M
	 qi6t/eWgebB1xQekV41MtYp3JYPQ7EJAvTbgoxGhMLtFtaZx/diD07f0ofPFWnV7MN
	 /4F6kxpXlVSC0jCUG/8X7tL+7ycZXErv8H01vo0Rtskdxe2Wgo6MHsiI4AK+ZucRYQ
	 Wc3QJB7aNFEJKDsA6VV/xDAsoLZIM4Fo3/oFvqfMqZpkddsV/0sDCmuj58np49fc0w
	 RI8lXOW7bpLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B75C07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169816549640.4001.2544608935498825384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d10b295c29048f3a4d566b36f4faa3afb6d4c0d3247fdf7930e7da568cc339
Date: Tue, 24 Oct 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698165496
