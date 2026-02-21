Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162543EBF31
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686294; cv=none; b=MUSLWpu0950q92z1Zq6nnEFXbHHRcsRrfjDF7Xkl8XsdylpLkeNi3J+Dqh72Is2/9ef2U4dD+DpWVeXq/6mVrJLJ/E+gBwo5QMh68sNeb5Gs6MPuf+bKjaWBW2aWJ9/YSjGgIC0F2LEIbwtKjslC9WqkIMv0SdwLC8hEPWM0PPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686294; c=relaxed/simple;
	bh=gHxPLfoTYuYJVfqegw6qEVzHZHexIXzh8yCfZRYw/5s=;
	h=To:Subject:From:Message-Id:Date; b=Uhz1fqLAdQjpQToDKSfJNpidZpjClCnflxJBiurdv9IIMsDrW27xVnbpgGNWbwBN6Q/x+g2MwJRqBH2S9iGeDRpPur3X0f5q4uSzJ5KZtZ+GGwyhn3R3jRmTjzUfN8o8HoOltDjy2Qls3H8GhjOmskBk1lbVWc54bzKZP417zHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOeV6mEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOeV6mEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D4AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686293;
	bh=gHxPLfoTYuYJVfqegw6qEVzHZHexIXzh8yCfZRYw/5s=;
	h=To:Subject:From:Date:From;
	b=UOeV6mEK23HTPav2WChQIWPKUFs+IlEw+/58KtmO8Ng3/0BxQaCyE8ShfJLTXo053
	 Ym2aDCPSKL9+yE6prZhjYeC/s77YUZcM+VotBTe5R//5R89KSeTarRDqT9Vt3AEk/5
	 DvFANkNUgqMBf5xpp20JFha4qU51YvcVcxb002ga+dxOhnzV+xwwMeGvk2uOm2oo0+
	 HW9851htS4NV+b5BuWnieGEPq7l/StnmIdtaIg+Ut7Rc4KTE7Pe5GrpTL6iebMy+J5
	 u1F1rSvevK3qjTKnpHFFvGrbK3mkNw8RzDCMcea/HodxjSIy4k6/bhfWCkr3ozZgup
	 0VJ7H372yU3sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B96C5CFE6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168629362.8803.3816833673994056349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe1bbd9007163eeccb51dc951630e847a78603a599814ce27bc8f06ab12cb3a
Date: Sat, 21 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771686293
