Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2151E2AEE4
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783816714; cv=none; b=XxtEvQQgr6AQCzMJHbLJh3CWeE4wfnKuR1v4ENHkNdfbW8QCdgt1NS8gl/drlHOc5OSLB+Yk8EhyS16RKMJphOoIX18OgjfFcVYc0YSrxqwOWdEvwC1s6TxlgYwaYHYCtOiGp5ukMeHTH8lXKjsOvTvKaII7k3+EUqJUN51ekj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783816714; c=relaxed/simple;
	bh=mhv+2L/0TL6TsJaHx/bu9p+NYFq9f6yGe4JhAKEKvA4=;
	h=To:Subject:From:Message-Id:Date; b=ie9yIlIQuoXvip16E8hRgY+y5+dCotsXVT1ZCFOIUJTWTNok9D4Mg7g2Mty4om3X2QoHqqRZhwkvbsMezgrdUZtYQf0x+pzmYZYwys03GC0qAHS78jwVXJe3fYE/0E+MnkOcxq9Xen1jwRkQsHZeHBex1cygZTR+oM++2PIY1ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfbmuMWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfbmuMWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE388C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783816713;
	bh=mhv+2L/0TL6TsJaHx/bu9p+NYFq9f6yGe4JhAKEKvA4=;
	h=To:Subject:From:Date:From;
	b=cfbmuMWE9h25043cdrGP2tu7X2Yd3TYpi2aMV8FQpKIuDnlX1tqIWwliTXr+MNLEE
	 AlzXb+zDnGo34wWeSENbSY6kUqjoYe62FC4Rl3muwf2ev16IF2VqA65lxLq15DWXLb
	 C74bpgVHPNVxdkiaSUjubWsHJ2y/9mR/d6Hj2lQDRgcqzjnwE4X38liJ0o0A61zmNQ
	 M+bk4UGaV17RykghbRPqVcdvCWLT1iYdj0Cd/xvt43uUkZ8c4HjV891MFKQ6v6SR5h
	 RR42s1zhwrK0I2p549yw7G6RfkV4fIk9z8SVw4H7Dg6QdcDmHnuYps4ZbQkrCQDnq3
	 maOD8h8Yab1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD85AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381671368.14609.12002386242079119267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d702d261c9666f195df235d2d7c526bf328aed846d5c6b9478ffdfb4dffe0026
Date: Sun, 12 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783816713
