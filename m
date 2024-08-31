Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25684D299
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725116154; cv=none; b=lbHC9ybB6jM8CVRxuHq/tQ5VGFn1xa3A+nMooJ+22KdIv2m2ju1oEbg0aVfMNO6/anyE/De8231xpqJHiY1WjL1YCjPpAuo7ahMfnUyUyowimZRk5tsP3bZHAJdk5ioSs3jq1AEJaHm0pYxPY0U92MqybzhENG07vwVwA4SjRQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725116154; c=relaxed/simple;
	bh=BPnTi0UXYLqN81c9cSHght6kqPu7y7zkErspIG7V6lk=;
	h=To:Subject:From:Message-Id:Date; b=KSr5kQcxSjCc7eKTI7Dti2Pk8jLtlH3Kq0c06mHCdnI0Q1s5DN+TgxpERde9RR2BRAi7edI21uF6jlUPq6uAFdqib8148FN2B6b2K9ivsiN4cnWLkDHb3IikO9dMJl8/+pCNY7/MjYrp2E0q8ooClxG6DY+OgQkM2fDIBiIFp6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHSXZsC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHSXZsC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77CBC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725116153;
	bh=BPnTi0UXYLqN81c9cSHght6kqPu7y7zkErspIG7V6lk=;
	h=To:Subject:From:Date:From;
	b=bHSXZsC88vHqVt+JB+5bFp22vKihjxEAVzhEOAESLyRxSaMZReWCOBKQAv6RYSduk
	 nKcWYVg1tAVr0T0zDc9gBrtCLi0aaGLfc7+tbxp5qtoqalnp9/GZSEe+hvQ/53598s
	 MsFaGNu5oOpr0ig2SEsi810JM8XZWPTXsTgkIcP0GqPChz3QQJoaNKey8pzl2hqkeB
	 KtB2uVShvc1z9r3w8AEl4/fQptLDDTTvMhRb2YlzE4OmaEHODjV9tvM5CfY3epujv7
	 8itU3UurCXSs+2cbDUyd2A8TzikOEfYzDs3WRBRrrwbLlxdnyFCw9yP0tQD5XeOYm2
	 FTqmXUk0KsGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9427CCD13D8
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511615359.30153.13543551935837672933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf79626dd193c40c8f474d1e830309ed940c7d8750ea126d9490fc7200d41cfd
Date: Sat, 31 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725116153
