Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1468803
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81E9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675121585;
	bh=ym+UvFYKT8CDD2Zgea+saXx0xSH7saWE2uzeDi2P8L8=;
	h=To:Subject:From:Date:From;
	b=am/9QIKzQjkAMj+6Kqvnd9WPRHP+0pLxvkZ0QgWqzddvrDwGRKwZ83QLHQmkSwjXe
	 QHMfAQGSpZyErb42Z0mCd5UVNrTLEA1pfApQZJmYhodXPwb7Kvca/TDx9rM6kJdKHv
	 BW2wMv5KHaNKg1ITaDq7BwW/mbPmpZD1oq3ygG+grG0Vn/AsKJqhC7HZGjGLh+tSNZ
	 4hxITrxBFiU/gPeoyknoIK6czjT1iOeBrwURsSZWPOgo5s9NKkBTcaVbsLwwRkeQH0
	 PxMzfAt+55G02UoI8LFnmeWGQ3k3gSR/UxJSIvguR2QjvQI78oxeC/1nx+ahpHkrW0
	 exum/tbYV2UWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8A8C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167512158576.15218.12281520742478451089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4927b11f7c0cc1c97ffb4515969fdad3ca1ee2e4f78a0bf15098a018fb50a9be
Date: Mon, 30 Jan 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675121585
