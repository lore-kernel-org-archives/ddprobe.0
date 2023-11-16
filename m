Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1366CA21
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e56rAlEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E7FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700093296;
	bh=561t4zYcXTCCd25zF8yNEiJ7vFvSqCavI1ObCEvkKUE=;
	h=To:Subject:From:Date:From;
	b=e56rAlENcjKSlNSakQwdPHtHGbVN1mNuo9EmK1FvUI6BZIVdpS5UgLFQRRZeZ7glG
	 4JIDOd6Haw81ksyONM3OBLefIrnQ/ErPkiXstCnXyXV8LTzRP5d3f3LzUZFHOredIv
	 6Vki4jzOhEh6mdvVny+9KTo9pYxETnrg/1hL7ilLJE52D+VszMD5L55e4cfD5Acvve
	 wB5Qm7O52v7C1hJ7T+U5ofDMIqbkUyRvzWAh1UgTfpHk3pMlt7BzZe4zgLlKd5+Rdi
	 a4ckZsm0ZGfEXzEVBBcMW9en7efx1TLvgRy2RqlQL0g4LBYCLYXbs1HJi/quqO/JBh
	 /DguRhldjSCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D7DC2BB3F
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170009329639.5585.8085209582989734585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c8c8d2636abf7c762fb8a499ab4fad2a06681ccc9769bcb2f6f8aa3052dd2b
Date: Thu, 16 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700093296
