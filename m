Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD99634
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710549497; cv=none; b=nqBSBqe3Vbz+ZS6J2F0i+RGBCyCVo1/MS4AUA63wUZcInRjXropmSV6BS3qEmZI2qQS1F8aN6qXfBoOgcYjzLdfRXjU4O0HtyJW9EIjKpQyGiTf3aEovjHgoySe73KT3gVdzzCgv8gQ6PZwkJCOKAfG023RYtyWCpV2vc01DIWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710549497; c=relaxed/simple;
	bh=VYT7rfBl1W4J5Hf4tc+0zWrK3stPUr9LTmPsd9M/uC4=;
	h=To:Subject:From:Message-Id:Date; b=Z5Vf9948O+mmyon01l1aZaCwixe9mGJH4xmfnt85/2j5j+MGAJUx329Rbq3lq9yApnq0hCnhpn3P2CF/YzGzXPf6UmL7cz70u1iJETg7Z+o3uFpWdu/5qV0xIk509b0Is2HGF0+83jeSF+EhFGfgf2zSF2CRHv+JNUvvQr1kz24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahAVhAOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahAVhAOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74635C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710549496;
	bh=VYT7rfBl1W4J5Hf4tc+0zWrK3stPUr9LTmPsd9M/uC4=;
	h=To:Subject:From:Date:From;
	b=ahAVhAOlLdlNOO1IezFnfQTgPmEmYF6ySad8LOnWljjJM4nA6vqhjXuJtfVWzULWI
	 dTJ1UPtFGmUzZRoqzVWYQQvp0AJo+6pSujfsog2uCKdEG0HRR2AKjztJXN5FvkU/jj
	 8gmrMG7IY9JxqsbXJXoi1a4UfmdE2G/4K1gxLg3sgE1SNadkJ89gpJb7eVGr4dYTI5
	 66MgONpBR8ItBikqUCnZ1xXogLJFUVLi0KYdHbWqIvCP5NrKzffiR6Ok3p9OUTpamA
	 wzmMBnqogWSDLzl7wb7GuAWf5sOcjYtRvHjKxqjrfGJ4aZ2hWwClFEbRZkQsWMM95k
	 VZqCmmFDohQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6397EC54E58
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171054949637.8874.11215617399041214759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847142a63a213cb987ff8a35532c0211369caeeb55251e336e055abbc0b80c90
Date: Sat, 16 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710549496
