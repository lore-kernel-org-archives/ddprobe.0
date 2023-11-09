Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F64D1A71C
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWNLrlO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829B8C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699554496;
	bh=6g6YsBYI0m9jfObKm5UNsIVxOTc05AbtMs7Y7Xv6UUs=;
	h=To:Subject:From:Date:From;
	b=GWNLrlO6KFUudn/SSQH2KplrtO73NOtSKKuMP+qe9SAHildlqNmYNTVxy6rXQKDvU
	 trB7GvE9tIMlwF9X/L7oD8qrp69npIIRFUE768t7nZVzkYxC2x4B5HA0U8sMCDNPUr
	 s+tluRMPbJubafGl1Fus50w7eF38awmuNxNKRgegR+7fjYH5wSWn+v/zTl46f/V+PP
	 P8GK8LJg6O5sBRd/8Z2gB+1f5PlMbHfQZJl6LDbP+msXqpEXyIa4QWEFQaWq4Urzo7
	 C0FG20BnKw6iQo8CRPzMnZv9CkEh6AhR6ujEBISn7e2d6OQm5K7m5J61a+aqK2nJl6
	 j2fTY7mF7AnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672A4C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169955449641.29852.12704499095137841305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc118d0edd2c125e27b90698d19821767db81d5219c8aebe4dd14262e4fe5784
Date: Thu, 09 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699554496
