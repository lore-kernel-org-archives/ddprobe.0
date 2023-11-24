Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047AB22069
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COBBsRv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7822BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700856496;
	bh=nNzEq8puyEkR8qlGh0IDD/HucWFhgfy6nuWqsfHDYpM=;
	h=To:Subject:From:Date:From;
	b=COBBsRv+XAocpNE2FI2DnwqTGAPRuANc4sohN0hN9AAwmwj8FUNeJQmwLrYtIL0Zc
	 7TSobekecrVpphxcADNqT67NuunpyLGj7D960LvQDvoMFpV9aI0H9EBFwT/37gWKar
	 MongEsn+znC3HxQOhQdDfVm5YEG0BRM05s+oKAzq0Wvhb6WY8k8ihvE0il3QBmf1+k
	 ovkhy3StVSs+hNdC03GDrOewJsuuSJMVghCdwmvdnODQpuA7JiOLFNOUyQzbeSRAvx
	 4a8ZCwyjRcNubIqQSrKT/+mZpeHfSQT+/gvLreD2A8MVY6aL3pFem3gLUd9U83SZvn
	 sv8FhCyR8+VPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5CDC61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170085649637.18977.15057631202025369967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12ab0ed978f612c81451c50e9ee0a129772d20f8db77ce81a235cf9d69e6c4b
Date: Fri, 24 Nov 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700856496
