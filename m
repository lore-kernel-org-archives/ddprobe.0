Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6742F0661
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777991254; cv=none; b=qvVFQVDcvF0fhcy/6eOAX+TDI/lJQrc+Vpu5P51H/xsqdqmL3ELh8HjVfpRBGWPoRBLiC3wkurDitJuGg9GPPtDPUpDa7pCvMFsDryq0ApD8QN7F7mUaK8YxnPkb5RET/pK4tzQ+JCptQMkPbO51n6OpnIa6PXwYkR7G4T2FyE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777991254; c=relaxed/simple;
	bh=0aUZLkaoMAPlumkDVkEKrlHc5HJuG1m5GtEOx6rXXSE=;
	h=To:Subject:From:Message-Id:Date; b=FhPT0oT2iCkrZiMFkc65oYtwIuT53zOJ0TjGyFLkrDFwXuvBAVzdDq8ZiYvx+7tIcK1nr/Twvwz3sL3OSdMBDXAW0cPKpslPqVeR8q1B/sdn+C/nqYi3aEz/9xmAGd4OFRLZeg06gV/xEAZTPW5Au84clTqtlZ67BbrlQ/h/+mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt6KU+gL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt6KU+gL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95A2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777991253;
	bh=0aUZLkaoMAPlumkDVkEKrlHc5HJuG1m5GtEOx6rXXSE=;
	h=To:Subject:From:Date:From;
	b=Gt6KU+gLp53dY1Td6a2GvwztEdH86q38AOBMj9+9uQV+nNDPt8OIBubzXqQa3qFY1
	 EyDDPv6BfZP/bAVoA1NXqq83Cx/o9qOcGUNvK97IbsXrizkhRY4bELBDHUls4dPxE0
	 LU3stgqDUqLS8EMzxtK4Bk4S26pPPPWhszuwhdq2o7FJTgoPlql5xqbbDXodFm8mGW
	 OVHMBdawjI45Y7D7WogRGh9xDx8H77EVSRsmuNZaHuisZK15mIjdaWIZL6Zu76WtH7
	 XjQA37ijMdfZ98gl/yqkZY0cBqGXZEB4Wkzoqm/E+KkbkVUcX6LEzShzcASL+eOSj2
	 cyAK7+M85HNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CCFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799125369.9712.15943695708649024741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df292509f0b7fc7277a59f98d4ca923a6982c814afc11896143136e42c387e6e
Date: Tue, 05 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777991253
