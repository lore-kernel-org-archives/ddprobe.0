Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C6B40F754
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788550234; cv=none; b=To0RgajN3xJj9LycFYhFHio+zaL7fzfQWd8E0xJL6WYYdirbnDKeveU4uOsXfnDKAYDhoJlb0DVTw7V/wUXyWy6D4kX53UcsLImpyAFzt5Vi6SHMQzBrbaPhHG0mFaqXgFrT5RNg0nut/aZuAuu29+mhb/L6N0X8Om9G2l8GWt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788550234; c=relaxed/simple;
	bh=iSvWjkF+2ym1Q1SzF6gwtWBuycvHeer5dk13Ftjl9GM=;
	h=To:Subject:From:Message-Id:Date; b=qRLBbJKiG3okY9oBD65LnUQn9T8Abr8TwQYZm8uwDU3PF+Fa/nyTI67JeFx56+J40AjIeKSInXmZuJA5Z2fHsfzagrM7bBM3s3UOuzfJHgxE+bsyoNXxLU3dKY64Nu8t/ScXLRNuotRyASs+kvVDLYAMRsXsAyOWZqiYmXdxGJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RojbYF3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RojbYF3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F4DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788550233;
	bh=iSvWjkF+2ym1Q1SzF6gwtWBuycvHeer5dk13Ftjl9GM=;
	h=To:Subject:From:Date:From;
	b=RojbYF3XxWGiMr9Rtn1p+cdIIwHlY1/zqqsKLRlpS5RCa/gTyO+krr9ByNcTl5UUT
	 zCB4+OWqnj/ISTylRAJ10BIab8r3WhbkJOgPDQsnM7aPAZ6BkMxnrrNmHjjWZZKncA
	 kz0uEgRrRYKEkIqGCfy1R02DxCTUto+DCLWnCTnXfESbyl+02hgVM4PgyTjkg88Y5B
	 afWI5nsalWRyO3wnSoM5ysryLE8pjjNMzEoDMwAfRSTdEW6o0kq7QMPqIa71Fyns73
	 pvQBFcNqYeHui9vO6iNtt4YUgLS/qPFo/FBYh/94qXlm/qZhVmPDujQQdPAoWPZwsj
	 6JTolVkYIGOxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C77C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855023370.314.535682750226948004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7db6843bd067545e17be322fdf67c45fcdc91092275e2d25f6faf0288431336
Date: Fri, 04 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788550233
