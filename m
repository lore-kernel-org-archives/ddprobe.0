Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448472D9EDE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751045994; cv=none; b=jcjFt9dLLbpDbpA05m5I505oNmlT1o5DiaKcK7r/P5omLrjS0S8L7B/j4lxw+Eh21+awgBpiYjW2Ss+B1APcT7dEsaw4Ku9ihoRBeCyJqhgiOiOODaGCf1Qgg0kpL8p501ki72V3DDcd0X/l6cfhYIYFwV+DgNDaNTy6uP0Dn5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751045994; c=relaxed/simple;
	bh=COlPoBnrZpq8gK7BVK26QvAyvg8UswEZbH5xI6E6rJI=;
	h=To:Subject:From:Message-Id:Date; b=FiNkobDzgfBBKG5swfMB7SWg3W4tFcwAe4/1MCBlGR6X0vCz+QNFSPLkK3OQMPch4ApnrEWMDNDrlJh/VWPVHGlTcqf5vfO7h82KsAmG98ZoROW2tDjeU3xh7rzJh6H7f+q43bfkRtT54ij7H3lyAtOX9Zb8CS/XKp7FjS4dO9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOrh9O5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOrh9O5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE58C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751045993;
	bh=COlPoBnrZpq8gK7BVK26QvAyvg8UswEZbH5xI6E6rJI=;
	h=To:Subject:From:Date:From;
	b=TOrh9O5xjQzNG02a6YEZuEWAqM16HyRDlpBl74DW5LlxPEGCze/V7hhxEFo/sT2xi
	 NEhesI+lxfJKQ//HhRpniCeKbpRaEma/tE8raLoTT0JEj6a/G8wg5KhBr6a/pETF4L
	 g660MgEuDWweVe5q9DT28FuEFLLeQWn7/xEqJxiSnDvoflFPMMouCjBoW+QC4ujSCP
	 4YO/i22mlLUtxCBwUZQfR7MyHILJAXOj/TcB7CUhM2k/mC7bKzfCpuTclN133eeeLw
	 LXok4ZFtCO9uwbwkkEYYitpuUvjkAmJHpKYLuiLsEyWI4tMe5adMNs+RMjxWThcjqs
	 bJ1UAkoP8l0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF43C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104599364.30446.5229005662154290334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2933110b0655131341ec33f41427ef1cf0fc47f13cf26b5c378ec63cf8ce4e
Date: Fri, 27 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751045993
