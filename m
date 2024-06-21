Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566A117B504
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718998943; cv=none; b=JbF/sRLevxz+SFpMrYF0/uL5j+toValKsEhQY9uX2fAPLePNHmRioa85ANM/mMjoekcNFva1gJYCI4rkfIGLOqK3lbRhP7/ehs6Y/qjADWHftY7nINHTwm6X2IaGCE9QurJPTPx+AvTWfyXdn2xnV4tKdKzPSWTBrfwgcR0IveQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718998943; c=relaxed/simple;
	bh=9teGS8vjHxsyNUPCcmEwStglSg1EdBSui0tuwPP/wFA=;
	h=To:Subject:From:Message-Id:Date; b=si5ZSvdEuHSLbBeX+xgxWFvzK9uoxMfR0vj/O/wL07C88Z4SqQz4DrMjy6Qg8BZuUb1Ih2q4SElJicI5vLO84WMsfOMDis0Ggh7lv9bHLotSlij1QwN1h5q36r1jxhxpwrLKkxkLydP+If3XDnLYnYbJLH0iSUrdkeZ/dpNey3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkLEVen2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkLEVen2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA79AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718998942;
	bh=9teGS8vjHxsyNUPCcmEwStglSg1EdBSui0tuwPP/wFA=;
	h=To:Subject:From:Date:From;
	b=GkLEVen2g7qg/Ok21x+hw4KOeT4IUVEZphVWwFVMUDmj7MaxhurPWkUSWDtKRvuOn
	 kGxXRfhViwAvlE/aOt7BwHPJl00Ijf21G3jT1w0VJzGVzuJqOQWhB7waoN6olbqpQF
	 h9bm8/TzaQeje0vuaeJty5rKe2YzIoD6kTyrfJxn7Y2QlGuGl5RF+jKDqmiLZqmfd6
	 jJSXuiounO5FESYZ2MBQ6dJtlru+NLY1HHBaRljnaqJXYdymXIX5wnHJSN6T6mjeFD
	 e/oJuSwuEhFcMcRpsvV9pT/DJ1sC6SvD9dzsoUjFQsr/FqNwz2eA1JTEsPpv8J9rq8
	 8EmGPI+I6yD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BEDC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899894278.4796.17867350764368571647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c81db9d4b227b35bc4cf30ec4aa3d86033b31491996e6a427da87331b9ae268
Date: Fri, 21 Jun 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718998942
