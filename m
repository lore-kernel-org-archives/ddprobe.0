Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185D319B5A7
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767417834; cv=none; b=ID6GTB8/Nfx54sa0N9UzaDVWXEVQES3pMa4f7/OLyhTTwvJdzzfZ5bgZqPK3bZg9q7TT6t3pP6wOm1HVcjgXYqueSHDgSYEjAEI5YlSE2j7fLiQwi/hkR4mgcQexFOjmyRhWzsJnILIU3+WUEjWBPuIuODXNS3jOntgXMUbkpj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767417834; c=relaxed/simple;
	bh=omPdYbJTNird0kP4ukQIder15P7I0/LrhhYLJG5EPl0=;
	h=To:Subject:From:Message-Id:Date; b=q1sJuKviaYJklov2imL6bXugVfNJe1xbW72Zmiw3zoH9PsYARa6v95l8YZvYG4NDbrwj4bvLhXpjPiKIjimX1Zdz+1a8Z/vUA31DPYak9XC9Sy2nNo756v4M2dvzf+LTuoMzknvPphH2FYps0dNbdGj9yWpeH549HlWxTCEI3Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw2JYue3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw2JYue3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFFEC19422
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767417833;
	bh=omPdYbJTNird0kP4ukQIder15P7I0/LrhhYLJG5EPl0=;
	h=To:Subject:From:Date:From;
	b=Nw2JYue3bYqmC+irJFzQyCyLk3EuivZ4KW2FsVkuCrvl9eLvfcmDlhp0n8Ri4rysC
	 igwP7aSYbZGW3jV6E6U5ujerNDPEn+6KcDuNcepgJcB+AS9yU01iL9DpFsyKNcQGrp
	 RIww0koKug/SPv9siNpXnv0552hATBz5XMdNDoYU4E8ywhBL2HUmUoifjK+LxzrtEw
	 PiyP1hhGrz6r5N3+xGA5kEPXaM8KYXE2HDq2hj3Qez2g2JOWa7XtZyroLYkciyoxFM
	 5U6u6wpTAeqlWbKPPlyScZQEdq+RBGW1SqS/fJwjoqCcx2xswe+ofxkcJRyqshIXbf
	 1P41AE+pEVK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEBFC6173
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741783357.3804.1897151778567099505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc5f1b945c64d4f56035717b2a37416c410ac4269856b0729502b56697a1fa3
Date: Sat, 03 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767417833
