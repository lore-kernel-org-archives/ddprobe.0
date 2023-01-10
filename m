Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F5A17C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFF0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673323287;
	bh=BuFhQ81G3UmGfuxRWYUItBcSdfHLZRq1bAcUyAA+Bos=;
	h=To:Subject:From:Date:From;
	b=DWBRA/rCfrySngV5CXWsmUVEBHGyYdebz/FuWZ3EUpYrqLlfdvRan5PyVI1YrpXhA
	 calshWBkResPpTKIlAAUW4IyTU4/CWXHe/e9IncXHNkDPcUkOvwmNhNSdyrGyrfm5v
	 WBFM03/FBpwYY7s96eB6FPK1wZpbKWUrnu/iEO0lFs9L4AUo7VwrJl+Gx+eyYSyO0C
	 0bv1TM5e4y7iIyLg+UM+g1N1E+kyzoFD7f5sqRGut3IP6PmD/I8f3N26t53H0ZeR+1
	 qvSHLrX7kzDg7or6R5xIezSY12mOsM6kNVf5ge947ZgVcIjOSIVpeKQV6cunb/pac3
	 whexdZhrjecfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613CAC54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332328738.31932.17558385878122404445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e10f9021095ff1d2f9e114aee9cb3311640758612292c6bbdb79c8ed56950e
Date: Tue, 10 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673323287
