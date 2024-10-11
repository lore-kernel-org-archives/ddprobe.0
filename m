Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F9F195811
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728669354; cv=none; b=pgHbE36jDd8+V6GOAgBwwoX91UAGcKw+FW2VgOMxBgsvxgBsTnnadz8YHuTRxQPPXsZdwK2ayhmGvhYMe2h9IhMVOQODY+eGfI54etzYsUViDCLuSGRJ6LCfQasXfzLKvF9N3bxIkK0gxc9gX1S90XXhAeIFeGSjeKO9s9xrxXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728669354; c=relaxed/simple;
	bh=EGgxY3jQRRnlahvWwhmgu0u1MbG9IispEE3SiPGTL3Y=;
	h=To:Subject:From:Message-Id:Date; b=VvQPCg1pDw2tXR38F5MsICG9VzhZOcdRitADoim23P1EpmJLdoxHJx5xBWQ3gM6tSpEWdideg6VtYPfMbvtjGx7lUtifKPhWDpEUDSB1eW/RVTl7xwoYvr6QkjStqCIsDydBqPOyw2OI7/EPJ4h0cls/tulqJ02ji0vqaJQkqmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Exnp3jWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Exnp3jWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC8C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728669353;
	bh=EGgxY3jQRRnlahvWwhmgu0u1MbG9IispEE3SiPGTL3Y=;
	h=To:Subject:From:Date:From;
	b=Exnp3jWL/ttrpYJA05qs3m0+1odWh19euv9kg6RYl/WAXMmgPmOYYAwgDNUPUje3F
	 /0znKVk9BT8JqoKwM/v0DZMhPI4sd/4ILKnqgktiKEGLweLo/ajIk60jtTCtovGc5W
	 xqwpn0XVXOij+J4CqUfSWrFkgN4cLZZqJjd9HmISkGqX9gs5kfkwdmYQdsP5D5qVJj
	 hEG5LkwdVGGZltSvJ5cYEC0hfFycq/tzfPAUXQk0Cs0d28C+sFvlcG4PZGYipAzb/+
	 cCDxT8MaBVB/cQu+Bet05Om7p5AKfv5xO7HTGKfhtFOo6gf7wCKBPGD/At5WDKKCso
	 +zgcOghA7s7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA23D0EE19
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866935358.2701.14818264122692135241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78dba59274c377f729b4490b218f6d92856c04358221edf273d01ffae25ff7d
Date: Fri, 11 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728669353
