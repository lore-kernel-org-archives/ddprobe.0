Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB312917
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkCBXex/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80374C433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701556096;
	bh=hp0Gnl7+hhwOZIEtwGOOn7dG+HRa4S+YNzFoOuk90WM=;
	h=To:Subject:From:Date:From;
	b=qkCBXex/fd4DxxdVK22dyRLLXUG0bLQTuDJWbuwz60HrKC6/+JGqIC50DzOR0gjLM
	 ehN9V2y5nB0gkLfJjnGK3JY32IEfecgh8CvFl24OLQQWW1yiwoGZRhsa8OdxgNVeIU
	 /wOC5VejXx66qL6l89HOg3isq7mboJ8OPG/jYVXI6wRwWBn02aRf9sDuRpLVyxwQud
	 ZLSFXjg/WfId/YYCc/wGJz82K6sywK9ooyt8ZDjhBlITiI1aJML8MR9Gqh0JAfCxhc
	 l2+kln3XwC6HmfI3uhrJ7DIVkTUFwNbP5Ek1ck3gdmfuabsZSbu132gmQZKxYShn0H
	 kzijK0Jc0m4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644B3C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170155609640.28972.17708112254122501109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d0d71c3c2f18df127eaf49941a77918c4f7960b1d5c5dc59d206eadbc73792
Date: Sat, 02 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701556096
