Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B28AD5A
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754720394; cv=none; b=tRpaLfFe5V37H10qudns5fIxL5n+S3WCuaUIS03O36dAYwz/ehfEv1XaBu8uCIN23vUxHsdd4Ssus99BSPWo24+rJhme/7DXgpfCWZiQh/mRqGsE5Ie00F8oAg9SU2trOOC/es72SAf8dxUbgERqS/k5uNcuEoTrVfF7d6n5E/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754720394; c=relaxed/simple;
	bh=EPZSV8aWPDJuQB8/SP9HP4uvAlsDKs2eOELaf3U0xOw=;
	h=To:Subject:From:Message-Id:Date; b=jBN21wqckJnbTSJ7FbccZ1kKsihPc1yRPzU6TOqA8+RPPaWUhuhc0i3OAGLEJXIg8LljshFcpG3uUtfkmREAW9bn362BHHgBmKhDYqc/IiZ2bB5h2r8OsQqdy5L0QcaJJy5zCiO3UNluxXtQf5a47SpynrV+NbrSN8F3XiCEAzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORPkR01L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORPkR01L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44AAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754720393;
	bh=EPZSV8aWPDJuQB8/SP9HP4uvAlsDKs2eOELaf3U0xOw=;
	h=To:Subject:From:Date:From;
	b=ORPkR01LxI1r7iBhhrpnvOtnAPofr/jEFJb67hPrHEeVKxU49bZRVT9uWNSTttU5S
	 PSrb2Qeq4JOrxT7Cfgr6ooHefNgmTe5ZT7MYrwj8Cj/uCSjO9rkwlYp/DyqnxVqktN
	 2XWjtkYsZYv8JYWXi6Eo6qPOZKmkRIKsgg3MJyHtgZa1z69/+GqzGDkfqlJGzjiCXT
	 4UnnsuFAEme2SbvNPk/18j7DPsQqBaL8uExWhtSwnwwgDEyqs2y75VJvoTIWKNH3xj
	 x0I0kqsRhJ3Kxk/J1aenwJPZYGs352dmQW1Sx+55UluyMO+5Ya62GlMXZDYQbzuPQP
	 7w6Pz8ln0F1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93224C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472039357.32359.14898507306686470779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe519349addfc39fa99161e88afdd387bf98c80576c81acc6539e598e98e1f2a
Date: Sat, 09 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754720393
