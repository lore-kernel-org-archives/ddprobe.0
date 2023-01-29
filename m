Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5818317D9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 09:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F07B1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674985986;
	bh=vD59QffuHY/waylbjezUOSbQSTNW3C9NEa57bLxMFlw=;
	h=To:Subject:From:Date:From;
	b=b+eAQnWB0oPhBZGhDOja59sl4UNI0a/n70a6x2gALRIfAuTy6KxgK5fvuPpX4zUbx
	 lvHB/eTVQ2dAkp79fe91XQr7pvJCSVH9xUHszuubwauNqOc978X5z6qrifXXcv2hHl
	 v7HHpAZawPiOttkOSuqANsKHPYizWyGqTZXQB0cRdwziHC8xsaXWoxcYwhU2cgRJrP
	 7H703/EnPU4BI3PTQXwpEIMNDnI4Fz4MtP4RS641nMXV1T9RxEslOreiKSqnmAYbu3
	 h6FyuyzTWAhx2Fp/+diEduhK6c3UEbYkoYCCIrmemajmpkukLq99QL6vluQdxZwsO3
	 cWOW0+IW2puiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C14C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 09:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167498598580.23223.8038873255643829498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a593c0190f065db1c8a1916bf27a8620cd60b010fc0a45ee8bb3fd32499c44
Date: Sun, 29 Jan 2023 09:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674985985
