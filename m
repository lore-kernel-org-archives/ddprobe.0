Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38FE3613C
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711735097; cv=none; b=FDDbUdoo6AkYF73RWAb3Bhm1l7jjyMm0+cAl4r06GFRqH+JEYQdhobhija+QCcnpMG4DF3mFYL/7MiL6EVp4ZB8bgizzFXqqfUrMmFThmx5m2Dsr6hvny3CvAbXaskM0TRSnk0dSwFzywRnQoOqawbZzed7SrSVuwD+d8XDCsAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711735097; c=relaxed/simple;
	bh=qBEjw7/mrEOhdK5q6z3ZtPW88jdiWFjc2TMGkDPWWEg=;
	h=To:Subject:From:Message-Id:Date; b=qrzplHj2PXim4UcRdkK/7O8ywhCD1fZgzydq6/lSIEU9YsvEcWOJ5whdpW/sz7x5M9H4D5cZarpTC5RxZR6J2RpnnTbbIpLbXpiHICzCw8bOPoH9gGtUX8/jqeAGwPEW46Gn5GRkAz/1jsnyHq4j3tnLmJ5xrPMU+/qMUr6wVpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIfWVGCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIfWVGCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6BEC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711735096;
	bh=qBEjw7/mrEOhdK5q6z3ZtPW88jdiWFjc2TMGkDPWWEg=;
	h=To:Subject:From:Date:From;
	b=rIfWVGCtBUs1z7PMSCFGeDRASLWgWhGT/eU8TctGcg6wMVK6iVKJgAjDi+p0UfG2B
	 GQKBT6L2fkPC7ZuOb+bUHPFb8t27o6og63C21dz4/NrBjc7lar/xC/OFpct0+8FTuX
	 v1I6vfpWRkuKBmz2RHNHWzjPBYzZG2x1yQQvm/ukyhcZz8ufNXvYxoMlXZEqC92AfJ
	 BR3wRIboFx3Qxa//qzofoexEv6j+vhGhv9BgdayJBKYuLHOmt0rXJu43Tj7GmCQ7kZ
	 Lvn0cs/Am+pwwTQMUgWc0oEkzDtMDsq0WxGDA2rkyVdjqtPjuv+3fHpmkxPiYxOQVI
	 9/C+piHzqPS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635B9CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171173509639.17875.7819831909381713677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865086a99f0c582377462a33f9060c76c93fab90a39753b1f65628e868a3b623
Date: Fri, 29 Mar 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711735096
