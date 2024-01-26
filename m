Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070221DFF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706288897; cv=none; b=Up46Jy0s+7S/8BjMs/DaI37sTdCjoe9kAybkHhxaEx2b6DQpdbuVDZRDLrgVKaai/Lm6Mddcl/j8uJMprVVh+c1VYidpo+Kzngd1BZmVlGCzmngcD0BxBkyAx/Skn5IwDVXHcJOK3VPjvQ8mGoztVcC0TJJKfmYk4B1pCULsukI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706288897; c=relaxed/simple;
	bh=Btfd7QQvvP3HPI//nyfq4N9YGcGZcydiuh1mxWDjHdM=;
	h=To:Subject:From:Message-Id:Date; b=mgxPUY3nIhiKVlUz3syVePm/00yKaw6ta8wKhWMmKqDRJvCPeMu4/8mIRmxxYUmL1nFWc1nXGN+Jh2poOPkObM9rBkxhB5+leUqlUP3y9uQorfhs/zyinzJDouJH1T/UL5ETjA7G3Eulzi1iRLglqcHc1jUqCTk18Y79xJQlDb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHxLVgvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHxLVgvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA13C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706288896;
	bh=Btfd7QQvvP3HPI//nyfq4N9YGcGZcydiuh1mxWDjHdM=;
	h=To:Subject:From:Date:From;
	b=JHxLVgvtet0n8qgLppfS5KEzV/Pzzi20R9saajJ/DX35PS2ge7M0SqK5k25sJNAew
	 Qr65BTnQGz+ZcPZF30kuj9KNWa11HrKVmRYhmLlQneaxXPWW5A0IHg9nWmMIi8OCHt
	 J4eAgAW7dz6gm+1Mf8tG9hKV9x6MLWB8ByQSSk3vNB83EEb5tVm23cYmmfsZbEEHxc
	 8oI3DiSZoCG+WKqpD1R9LO8Tw6G3cPLnvgmWTLqwTjxN1jY9p4LYiD7Z1eQGe8VZCv
	 mxFShHFpQSN44d0D98fCt49UcPMzqWlH38SJFFrZF3/UQgitmiG+cAAgNRmmUEJvqK
	 nhHMEo8xwCAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607D9C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628889636.28229.769299797194159241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00e5267c46d21f2324f110b0436418ee25994057391f51023be176460ba301d
Date: Fri, 26 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706288896
