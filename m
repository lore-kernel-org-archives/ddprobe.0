Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B079187346
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771914894; cv=none; b=IRKm1S3Kz8YHgrDGZc3KcnKd7AQAn6yhbYbrNwNKi0hw+UZ3hHtwgWF2eEjnleEYSKR0ZEZVek14A8zxKUNlK+hg1DLNk5CY69t0av2OVS5FVWw383sWcxY+WdY1XANe95IutnfwvwpgJWp+QKcB8IBFgGo8PeZR9OP+PE/LTDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771914894; c=relaxed/simple;
	bh=vXB9oUJRDnVXSM8T0WIiGC6hmB6BMnWpvMleC58/TYM=;
	h=To:Subject:From:Message-Id:Date; b=VGtbeoMMWRmny4eaz6R/GHwAIsyP6Lskzo3AA5NByiMlJCK5l3BZSzfcHEzyuKe9gocrTKbp/hMQwuT0brh1tyRLvhOyO6ej5YcfnELYOiDrNSq73G/VGR/x7mCRtrqMBUCmy/gpJoTzjgvsHrEgZWOIlWmDeikkIXKLqdYYCmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhe2MI3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhe2MI3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2360C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771914893;
	bh=vXB9oUJRDnVXSM8T0WIiGC6hmB6BMnWpvMleC58/TYM=;
	h=To:Subject:From:Date:From;
	b=jhe2MI3bIKdW7eRq08DNK5kmN3dpy6zKlv4Fg9xQkV584E6MiBiQG3HonQxKfqIP5
	 q1FbDx/q7XsUgANREEKQUJsJnBCwlENPoBdQMfFvJvqH6IyJcRrSQ9rQRst7rFWm1K
	 tGqjrXp/V8EM0Kp3IsOIa9AGhxd2CMb/qGOq1yjpFeNqTWS9JMKUMfh0HEFLPFXsVy
	 dpkRe9qE9XofgBzYt//aHjsA6mbHUMppOCCq1fApdK+hHHeetCMjlJ5y5i4aNHqo5G
	 1G2dw4uDR+tMrdko3Zxvi79S2Dw6KJhbY80dc2JEucVvH92l5kxe0+XXSq/05+JrsJ
	 fy6ESGCWzuVMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4BEFB806
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191489358.11000.6427921701470683673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc854403aeafa6ca981bba83ca8a825a809c64266ebf6779159bad2cece91d0
Date: Tue, 24 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771914893
