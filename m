Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0BA15486
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1l9cw6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8606BC433C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699950496;
	bh=8eAt14di08zGsKWB9nxHePxFpFl6J6lSWMFIDR8C51c=;
	h=To:Subject:From:Date:From;
	b=L1l9cw6KoETi867sUrk81fA47ZgHBhKwKFVyYig1gBJiMe9U2+10C7L/mAGo9VxMa
	 oUzGRt9J8Tyx2HnvDT3lXAMxGpzZRYas1yNxdwcgP1hqAp8YcL2U8hUl137Ull9//d
	 xKDJ5JdevyIjg9/qY5Br7QJP6CJxCYWwUJbi+BHTkR3ffvQGrrq7+FnjrSmsD3i3Gi
	 nEl5NLsT+eHiTfzet8B+4jzl78CIJSv3kAa6SXpZ/SpuS7HXfPc/lNriOg3XLqCQAh
	 z91JqO74FZ4SWrDHOjrjM001X8zstNt2wRYzIIhJdLAbZ8S8tWBS6n4NJpKDveZL+r
	 58s0iWsqV3YJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65ED7C4167D
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169995049640.25165.14698888916633028163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ee467970b3788169e27028ce7d79348f5fe9e9de53862b4f6cc0df67924ba2
Date: Tue, 14 Nov 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699950496
