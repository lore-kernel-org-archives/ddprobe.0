Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E168C63A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B9BEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671953487;
	bh=erxQY52mDULXbEK2NoZPGlCO57olyP3T6N5RqXiA9x4=;
	h=To:Subject:From:Date:From;
	b=dZfa/6OEhNU1S7mL5AoCgUxnBx2k0xd0ZZ38m1ZzReJqjVMfxPadIG1VtDcAOuu82
	 L47NgYezdiaaE5e2ZlG+pPg8Q3VG0+yvCb//eiHajJXfd2f6VaP0fqtxecNunrpoXW
	 Y7Ss5G1pejKCFVTJV81ULdC8kv/UmQoD/zSxSLE2y78qqadzk5KbxPVXg+O0ntPdJ3
	 zc9NjhhNagihraqwwVidpEjTmv4Azz8PPHIlqyYeDdizcxCHBjNToLbw5hz9ZmqHRn
	 8PtwtFPwBq1TJVRt1pBqAMC2hyvUZHueyutCNg56M1cRGlmzQQiylOcVtKXn59sM0T
	 aNx4i8HalZu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E21AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195348740.933.11174654651348006411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389145ae07cd001a89d36f3723d33923a8a224d7a02dacc6b561d252eacbc524
Date: Sun, 25 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671953487
