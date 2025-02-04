Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9081F2045B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738703754; cv=none; b=utOVsEsO1Weu3MOMd2FrRnGX5CVk4NXcAwGvva6FEPyTN+LTHfo97shsgRlYGqSbIgLzi/NkCIGr5s8N4ZrW2ANYSAddU9St3cqm7GLcEnfA+VW7bEW67OAq97f9zjd64kZ86+6Xcc5PZjgH5SgmLn1FSoS3zBpaLsJ52s2wj5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738703754; c=relaxed/simple;
	bh=eMJuB5Brg2AfKc5f4VssOTPkBzdF+Jft0o4uuKHtNK0=;
	h=To:Subject:From:Message-Id:Date; b=XIILgPO8/gBJ2bM/y/S777iI8ZDdGxJTzUJsXAjS16E8pmr/UXOJ0RI7dUlNDBjF2seDhBhX+NNIsYBB+vR5WLRumnqea36F5DK8bmGhmLX5yq6uSIS7m2Bi0CPq4g0qm1odFkKSZpr4jlgou3n9c/YbIXm0mZbTl5sF6qQcLvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7vyt4+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7vyt4+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76D4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738703753;
	bh=eMJuB5Brg2AfKc5f4VssOTPkBzdF+Jft0o4uuKHtNK0=;
	h=To:Subject:From:Date:From;
	b=k7vyt4+ofDGfrflpsRTlo112OJAAojlHdv+6ElQ7ZZGx1/Ei2XlB8qrPNMJnPie5O
	 lpwzh1YxF+SpIVQxdeyFpW7/kKa1B8787lnhBjhfQ/jxNixrHuYS0rtmpHcKaTc+BO
	 Gl643SmSJGUJGdCYa7lmbpre/xB2mK79MN4tTRG7kIQ/qkzWrlX3r42tFul5TwvDvx
	 rE/R+IVyMsGw3NewQd5fHhNp2fobTy46ULsNEDy22TVmq8iP5p2tsjdoXAMdRo61xp
	 8zdNVV+Lj25dLP1p73+8T2PjzMnPcl+7QDRlWKLkIJFCK5v9bO+1s/MztEj9P9wmHM
	 8MfE3UyqIMyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C6FC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870375363.5598.776231929517136657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e3d491a3f3b0bdccdd0d0eb15b453fe3c0e43072ef44699373153ea6631cd0
Date: Tue, 04 Feb 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738703753
