Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2C828DC4
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766513634; cv=none; b=HgwkcfnoSiy6MusvQKcqsLlAuUuhnWrJmdstELulRMtD3P0Y+Y33geJ7fdfBav21QCyK0IXuC91hqYERehbOShmaVLv3zd1KfCwuBUhazqwlXGu5wsGkIr6Hsvc4FcdnLh8/PUykKeLT2K4ClaXSjX6OeN+yB2EgldaS/Psl4tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766513634; c=relaxed/simple;
	bh=jDEd/ENbPufkIfjzoedOEmyZV/YlUsF7aJmAqPbwKw4=;
	h=To:Subject:From:Message-Id:Date; b=Mm2wWDWzFphNPWtmWx39NerOCSVTZb/ctLxJQ85/dmjoHwzrVaVO3e2I9le72SbHWdkNpYUdf6ihtHZP+ihasqKjMbUcvDJcqV5gu+xfDdqr5LvT91OsIYOS5i6qlu4y9gd4mcl7kHW7q2tcoppSJenVok3R2JHXuJuii7TCLOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIfjVhLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIfjVhLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FDC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766513633;
	bh=jDEd/ENbPufkIfjzoedOEmyZV/YlUsF7aJmAqPbwKw4=;
	h=To:Subject:From:Date:From;
	b=KIfjVhLpRmKyHjzchADzuPbfRk7cJrvPO4vc9dP0HzWtMgqtFkK23oQz4GDz1rS8F
	 pRbcWR6G0diB5fuL2d+CxfLwjjueNURPaL1srsJq5O9rGrr7HbJn/gXZOUXqvvU9DZ
	 FBQI7oHQW8VNrTlXExH7xB5YxJ4W7Qx7qfMiIn+63SIEQLaGMO/l8tyIWRktueVObD
	 iFv7kQq5d4TYDTX4Jo/I8u6MSMwrCa1SxmWDAIJdGXF6x2hfje0vRIHECiIZktFfeH
	 V+LMdjIUUnGLyxY9BFZZLf3k80Qn9+/d+Hb/UXhqNsjgwprxb/QhxVWVCJ7ndMTSrM
	 sB3svp5VwFZmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92848E6FE23
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651363358.26119.13379587803378607465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba44b99b908f5498f5ba10dfd2dfbf88cc4b60a6dc4685f7d0d945a782c24f0
Date: Tue, 23 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766513633
