Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725071FC4
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 17:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9B4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690218128;
	bh=3VP2JyQOcf2QapvX7xlwbZ+fJetyhnp6z5I6Cssp63A=;
	h=To:Subject:From:Date:From;
	b=Oh586gjPlBnLbTmV4ceqEYo4JUYEBlBVbj9EIqNRtdyJgjk6FWHcoUqZleG8GbXOT
	 NQHyVyUhAYtIOommXgwuz2mUlNqv+HPm/7FnRPSZjVbP50QER0Zj5hz/CtyKqgKnqN
	 xyh+PUv8T8koXvqg7/vfR0bLyc4/hNjU4vxrjVKYNgfaRFCcwM+576vlDo8rSFvmkm
	 PijX3FY0qOD5R5UdkECExeBvk0bMBXQZgJrhWB2ZbgYO84SMhvXp4kQGeQIu6bCPCe
	 mTOsh4DTYuCc9NuDN/9rB4CLtN4wsBAKR7qCkWzl+eDEf1orNwnfA4vabNtHsI+qCW
	 HCBevOOUM/QAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF32C001B0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169021812869.29350.12579768827965290434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6853560e3ce4b04d863260bfdfaa707ecf6f0594518c7462d7b7f173f77aa8a9
Date: Mon, 24 Jul 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690218128
