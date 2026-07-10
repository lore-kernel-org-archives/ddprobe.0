Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE183242BE
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783658914; cv=none; b=Yx6vp2hfkdPT9AV6wjEvmIPHu7hQMpF8WRZCu3OHp0ZicbuvyW+zFOtWi6PXUL4N0Ms0JV3RLoajPbDdvegYWB9R9KUXZQ8xhudGGN+w1ztUqhMoRffwYGDIc2sG2gviKmmE3iZEzYnNBkAOrGr/0bN56rfqe+RQ7JW/CYOxyjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783658914; c=relaxed/simple;
	bh=oOQwWTdx8ReBXbnYCdpFXsZ5wX68HxrjCrVLQ5n4z/U=;
	h=To:Subject:From:Message-Id:Date; b=dElfRebfg78+6nA0Z5dXP+0wJ6OBx/1Bm+3v2eYVBT8USi43kgr+HwNyzGbSiXvOZYAXp4nY3RL8tit/KRBNcAVEzFzhzRlkPHJ0brQqO5sJ+sPvml6/jUxuZ3RxVMRYZggt62TPAP8L2kt4CEWBfNxpEdKrhRVhA04ipocVpLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuvljPlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuvljPlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC653C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783658913;
	bh=oOQwWTdx8ReBXbnYCdpFXsZ5wX68HxrjCrVLQ5n4z/U=;
	h=To:Subject:From:Date:From;
	b=HuvljPlWnLlN3Rql/AbvZrC7hrakEqmYtkP4dv9y1W0G/wL9owZp/TqOcOtn0ydnB
	 Zf6FaHU1kLlZ8tpW0IPdXnMEhGVQrheoaBoKQu1BhOFfH7ExkuimPqgvO8+1BhF87N
	 Q+J+6oxWnO20SyOvLBWvPidJ522sSn66EdbehtVsuy/BsqkxbWhaxch+UbqLoLdtlN
	 SLCWeEs79QiHLFu/PazHu0wd1uFkZyhXeo/3CgW0qTCxOarBEwHnNm3ahebDffZ1VD
	 YFeFP3UFwdvhyC8k6P6uBy51pLEWwDg+HzRayEiB29O/2pXH+7eqyOXhj6vL5tSvMF
	 0c3SZXXfl+/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF2C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365891369.24949.16186166086387526035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1042a4333b8945f32912511cfd872c3fa9412897905d6f8f31d1ff90503edf
Date: Fri, 10 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783658913
