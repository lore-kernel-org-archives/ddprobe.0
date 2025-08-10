Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC4C1F949
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754811594; cv=none; b=WAWJP0VSE+E+dWN/ivi+PW4laEWkbff9rqdvep9JAUfTIomR3n/F1v2VwftnAZenINvRW0yPsMeuEfpT+IR2yvxvhFwNxTmXkb4cIvcYk0IpOifQaPgkttpBCJw0ExtUsv0Si2bYvXyjH+LgyOvz+iijhJtR+pf5EEWHR0mOF4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754811594; c=relaxed/simple;
	bh=7ZIEoK5xVuz2ljlDOvt0eV8lc86ux64a3rrMiGTEFM8=;
	h=To:Subject:From:Message-Id:Date; b=omefgZ8JRim20eUu8mts0ivGqhel/jBnlJV/aDo8EffS/HAOLSv6OVkvPcmmKqVbh8fnOvM+ZzBgawvMQPIWSzBSOuexHFUgYLP9zyXTpOajRz2ZBXgPBV9kxZvGRwje0kcvclvJgC2inVq6geZ9RY77eZaXs22iUNkDc5A8z8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/X+3Hrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/X+3Hrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8930C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754811593;
	bh=7ZIEoK5xVuz2ljlDOvt0eV8lc86ux64a3rrMiGTEFM8=;
	h=To:Subject:From:Date:From;
	b=u/X+3Hrpz/mIbfcqkPFMeaQEUeZhNGPWP+2ZuxZxc/kUlcVVI/oCuJuLBi/RV/ILO
	 AV2d2jNrlqMP/DsbHW1bWA5nrUjK2FsICxWRDRoZwUi0Qv/+AhxauwgQOIcXfbZ9RR
	 4u1csOakHMwOvbV4/iUQGj++8TxnAsNpd5O82DNU4dSk++R6yGwjTu7sUk+eWzIy5j
	 cqP1pMDuxzoh/U8/4Jng/qu4+maSZZ62Mm6Y5jkRtP2IB3/WHxJEEVpvAMvvvfY1u0
	 DJYPpDixgARfPe2MKL2fuoXMC2flzooz5uLQjHKh/ULg6ODJ3iPrQg5VHGnlr+xGjG
	 fgtdt91zDrEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481159358.3470.1388671418554717958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41f2915ba32f293dd8dced495fa8b81f164a618787dc8ca410643bfb6a19be2
Date: Sun, 10 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754811593
