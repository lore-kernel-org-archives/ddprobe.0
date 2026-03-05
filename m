Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC103BA23A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772723094; cv=none; b=O5KDe8E3An2PRlaCFV3Le108F8f9SW0v85WNcMdamNEegnVE6yJOosgHg46l+lKWSYbLqKIT0hsP3ztvq4gxMIZKlRrBp/XTPQ5lPQHNNPLiX8GrEmfDRfKKxURkPYywzdh6j+2FRUfK6GMUe1bOOhVsXjkwW9HX1Y/kC3Tb6nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772723094; c=relaxed/simple;
	bh=c0q1hDshJic09PxqTtIyeh5P7qBcOTMojnyN4QBRBf4=;
	h=To:Subject:From:Message-Id:Date; b=EfK7ACb9pyI9Fq6BGAwXnHPjhyoDvhkiHYBwQ1fg5wMjOrGlvqob4Kvkje8ygzLN2HT5nkGW6zze0DBO7A5D17JrxyN+DHfx1uc+nZ6cSd3SkDLLTvuARDm8j78rBML44AXWK6jGrw8PGCdb1Wjv9V7zfN6GdXkDe3M/cjg6f+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7NsOON+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7NsOON+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB6AC2BC87
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772723093;
	bh=c0q1hDshJic09PxqTtIyeh5P7qBcOTMojnyN4QBRBf4=;
	h=To:Subject:From:Date:From;
	b=Q7NsOON+/sIIpPx1ogMX3G1OuDk11HP4l5i3p8aaADnO3SbRUhWQ0mzykZHxGzU+b
	 GK0CQ6hsvEuoqGJtlR2eqeGrw2itOif5q8D4a9GR23Qze64Suvp+ZUKq8T3pEvD1LR
	 Q4uwi+BufO5nz2O08Q8/Zqdp0ndD9wKrvxWEgC17Vpk7xYXQ5MfqX4TTRwaTBjojkx
	 RPMupIFHeICI9HfPfNTFuRgovWC5heY8r6rds1wMzAzcKSwh6T6QrnWXGJRn3T+ub5
	 B30F6VTf1tblQFwGlYRRqjeEy0jdYPZnOdbY36wODWpA0E3pZCcxYGuIdBwb+J8Ps6
	 T9b5mttEq3PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B115F33A7F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272309362.7226.2493543833015383393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57326828d8966862f8cdf8ac859e77bbaa6b14f569314fae55925a7643527086
Date: Thu, 05 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772723093
