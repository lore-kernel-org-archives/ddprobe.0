Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6592E648
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713648023; cv=none; b=k+Pv4AlAtf8BVfTMn/uvMhEEFjcLZYXXCBchrATrMT56K4vB4qyM+I4ZuQQ/42Jv4mU3Yp1prKtlTebPjflv5WwwXq1i6TFA0wN+QmKdI2ZjzJjYLYmtxOpqG9fUmfD4dafdO7V6FXfo5JYtuhUK0H4zgj0odAh62Tj1J3I/CGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713648023; c=relaxed/simple;
	bh=eLdYjkXSc2li6jhHw37Hc2SaBi5d0pz3x15sYThdG3k=;
	h=To:Subject:From:Message-Id:Date; b=nJ7z11axrkBYUY+pK8FYwQsUEv1mrzcx+sQYGBc7a+CfeAOnI02Twic9xeisQFtYhZT09YsldksuEZYYG+c3JE6p6zvJeMSeSNaH7yIfMc/8BD8TTbN0XCDtPK4wrMEMhq/8wR0e7NKdMAl6sJv4NjcaiJqikvdxxQUYHmGk+Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iy97yl1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iy97yl1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD28C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713648022;
	bh=eLdYjkXSc2li6jhHw37Hc2SaBi5d0pz3x15sYThdG3k=;
	h=To:Subject:From:Date:From;
	b=iy97yl1P586dv0cDjpB/oBplP96xQcwV9WqRmlDHJbimOVcto4TXmtwyYGE7gBxvZ
	 WwULyPpQHm4wkTLtksnx5coTSn7wQ7Ca3Op7vgrC3L2DwsfqG7rN5U6KZ7Mdsq0qZk
	 nFBtJskxSXwlvyq8I58B4j0tGM0owW8w1Jlu65SXheRqY63agAe95bZq1uw0ggOJfk
	 xnx5hSDFjOc9HAuJigaJFx0ZCPUuQGJ73otiJSpffKqH3bcy8ntLScyp50BVKFD2Ws
	 jk2uDtt4uvE4ZXutwJWNJ3dTe+XCNwEQT3LgIDh4YcJuF+qIde9MrK4q9eGw7ZZMz2
	 hEfqjRngWXFcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C605DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364802277.5657.13425172699942068244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9534a0eb7b07cb54cbdfc6f0afd4e0cf9f5ebdb561fd520c9c709f884b898f
Date: Sat, 20 Apr 2024 21:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713648022
