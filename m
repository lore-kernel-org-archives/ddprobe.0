Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B13F4129
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778801434; cv=none; b=OeuK5Of+0piFrKVzEaS2RqEs7FEvmwTPwjQ7HbfJ/L1BjAL5XPmSBPhWyvU2QeZgV2sd6+qhkqF9eRbNurol3UsBkHm7scGAlrSN8aHgHw23cNlqsJr6lDeEkGVRJgq1Pa5mgDmCPKdPqoDFxLd1N5Qf9Smibu2VpNcn+dcWu8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778801434; c=relaxed/simple;
	bh=Bhxz133bi7Y/VI26PrPsbkuaKQHYET3mmDeIjkGnCY8=;
	h=To:Subject:From:Message-Id:Date; b=gpSgR+XFWDsWVBgYfyh6DFE4m7gKi7rs6hnht0Lrp3sw5aWu2bb7pRMeWFa+YUdIWxLpt3/VH+UGny7EhMRxbJa7KzE+Rz+7BTlVIhMSpl+YbOHFDCTuaxotB3lODusGD4KiDLWqnvkO4kBQoC9tr+RDWp8yc6lTjsijzxc4CiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNJg4zLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNJg4zLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F87C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778801433;
	bh=Bhxz133bi7Y/VI26PrPsbkuaKQHYET3mmDeIjkGnCY8=;
	h=To:Subject:From:Date:From;
	b=rNJg4zLjEztssb21ju1qK3g6CcgVdIulgCBzlyZqJNKDCrkeHDJWkmg05LBTp6Ipd
	 JOebKV+6+ibSNS6eiQELYtWTernuwSQz90/IxMB1hae1e52gp/GAgoaJFuMxGTC2ch
	 KqxgsASQVbQbPMVZN6YDSOPj+mWymvP6YPWbTl4itYh1pArKNtEJRoj1aj0zYCzBzg
	 gX82kWXQDAt0ciXEGqSGLniqrbtDKqRfH5OdVyyLxF3nWI9oDykqK4YSWmS/gl55rH
	 D0HaiBjgGgKFlwho6gH4onD5ZEJdXhrYXIuYIoWmnCF9+kIZKx9+MTutyIMYrX0hU2
	 7JbpccfJ9JjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2ACD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880143368.9367.7430552128504390920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab72938d880dd79fe7722c0e99bfe193616cd85a0a28ddada0474c4d3b34071c
Date: Thu, 14 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778801433
