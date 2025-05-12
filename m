Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352E01E285A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747061394; cv=none; b=pQ9FVuW0BnorMoPpbOq1OYFmioPtFCCuGO59X9mYUt7Y/gSBQe50QZLpBXlAGA4eV8Qu9jycUSXlkCZ7qZmWFZ+B5L8ytSfEU2z67bKAOvl14EDaLqAsEUmb2wuGvqWe/m/nAdFG2kd8cKQ35642ZOf5IihBqFd3vEJ7M0NejDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747061394; c=relaxed/simple;
	bh=7L/hId94m7vKsSRgb3Y84TSYEpOEe4EKBpC2FRX63zM=;
	h=To:Subject:From:Message-Id:Date; b=oSZID8drcNc55tiavS8SrkrcRbXnf3EI2KIzpimhxYh44rtBJAJ2jwlmV5Wnct0SoeQ7itrVkPdoM+eAdMXIHNRbaoeoAlju8iu4PciKKUmMDn/ePdWnQmuCUCcyPg54rryfy39kFg/4XjlmqhzFB5fA4OQE51EE+OHy6ucU4G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5l3lKz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5l3lKz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F136C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747061393;
	bh=7L/hId94m7vKsSRgb3Y84TSYEpOEe4EKBpC2FRX63zM=;
	h=To:Subject:From:Date:From;
	b=O5l3lKz9RxbDvqzeoKnSWmVqJ0TkmryG9hPpoZcjPC1m5qcVPu4a/3Ty5BO7WYaqC
	 C9zctHBIYS85hIj5e8bsVPH5h6/iM2hABspEXHbCez+K1tY4tVCR3KcLmuJJJimawt
	 metRejzohZb2KZnko3nG4gl64l4iVP+PQxV++XeoMJtCZp4eafn0xcp+mV37rf1qf1
	 zpO7IjQCSgN2Qwy1h1GnHPf49IequP2+d6uQdtNmH4Wd6JXryvW8M7A6Jj8Yz0C0sn
	 27z/MlRXj9rAVhlHdNIJ2YJTJOgsyToDW30JE6sPa9xVK+ZDZ4cwQ786jyKdqo6NnW
	 dXMe8PfMyTHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E979C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706139357.3946.1453025519331555827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ac0a76b66b40a381613124878ccb66db94112d1556bbbbb07f910ae284966f
Date: Mon, 12 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747061393
