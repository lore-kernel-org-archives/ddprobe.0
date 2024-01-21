Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EF0361
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705795697; cv=none; b=a+MJTB28LQcfrZ08RYG4wFHuPavze3dJcA5wn4MURz3VCD5X1d78Q6uDf6deh3g07ye+X0Qf8ImPOJHNuTkEhlhuy/paZrJhK52y7Og0R9gcco6IVjXPIOAMWC675vgEyi7PnqPHf4s3woTmXm+MfJ9/oBRf4/Doe30+goif4Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705795697; c=relaxed/simple;
	bh=bJrSHgbFBwxH/X12wFQb8XoL+ISMbQG71nh9sV7khVY=;
	h=To:Subject:From:Message-Id:Date; b=bSCr2H14AbXpK57e6NWuU4UOVobrLcBFPN0jk+jvFdW0t/UnhfCmWdqm0gZB2BgcBcj/lggvfQ/LhZ9pFQng0OEoti8Gq3XnDEAEqmunS9dS+2i6tA+sX1y5LnuC1aEBnaIOAz6BKDNPxScBpbk2L8q9Vw5iPotUhwYueyFj9mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kULg5Lpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kULg5Lpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A2EC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705795696;
	bh=bJrSHgbFBwxH/X12wFQb8XoL+ISMbQG71nh9sV7khVY=;
	h=To:Subject:From:Date:From;
	b=kULg5LpuawnBwya8p2jUK7Zo6rKhHw5PmDnDBTSpzZUdVo0MYRK6GrXmytPy7DqB1
	 QxXHR3hcmtNh391h/d9l9BQ9+1jm3UG4+CmlsqQVekSmoYTIvFxiHFkpXrvlx+o4rT
	 TTnhVn1GPzHnpht8vXZHsfq4dMkPxOgIcuVxniwWF6JKsvWvGU9ZyzuCYvOay3eg4V
	 t0qgLglBk76UkserOTSUZn9vN6n2jg/WJFnvkqCrrJbj/TPwCjTaGx+/JQwwl0GfqW
	 pc9CRMGSbwEQRPobLWXOfvidR4JlKnNWG/csm52xzjqdMxhoHu2CWcphFHRu+wKiGJ
	 92/xAm9GmtF/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601C7C47258
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579569636.5890.9512757131818451842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096ab8cfe4e1c632e21c2d9a33974ab433ce448713fbc890b847843d86bd7925
Date: Sun, 21 Jan 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705795696
