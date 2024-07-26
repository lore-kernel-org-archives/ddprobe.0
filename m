Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20D914A82
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722004553; cv=none; b=O/xrpYhhF2L/yipnGhwJZ6IRhXlEwonKLhRt3EL0bxRgw1isy+Q+JZeGOiUvrgZGdXoYfi5a6vsHBoc9uy4eXmx7j60urGCkP2gnBbt084lPNEWh/tEzB/GcwSjWxyrqhcxfTa9bChnm+yiBWEiIING0qQ3gzYrGfOb9RnqzAC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722004553; c=relaxed/simple;
	bh=0HjScY6H2NsFuPxDYLDPhwGX/hc7GCIxlaIXDplzQEE=;
	h=To:Subject:From:Message-Id:Date; b=tPRtoVKKJOWj46BztMvyjjEHVJBm6TElpdWGZ+61j8dY0gavBUcbML4tQRJDToFUGr5bjjEOcde8BW8Q+6Iv1+wPz4F5Me0Q55Q9uvU54695aFraU8OcxBTYu+1HbU7rJF2SJPNt+BbgJ8LB8OObOvLZ4KJmoMCkH/eIIrDTAyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vj6N1Xlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vj6N1Xlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E65C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722004553;
	bh=0HjScY6H2NsFuPxDYLDPhwGX/hc7GCIxlaIXDplzQEE=;
	h=To:Subject:From:Date:From;
	b=Vj6N1Xlhy9uO4OKOBsPSePxB9QrANbNXnmvrwrjSJ/6UtOW90zY1qyGbux8+fqD6P
	 J9iobePaSwUww4oBXqDcNdegz29RG5xtDvPcv3RiVZw6mgg9mpVUplm7phkruccY4t
	 byK03zZ/jncfFUYTJYfDZi9KZXOAzTvmmo7tGz/SapgcmbdU3hcSGN/mULYHrMZibR
	 +hcBCiFGvQ2rrwZRbV+6RdeTgv8BEcGsrxCeutixNyOmIJuwAV9XtjLiOA7mHhGGsp
	 Dx+P46hBfmyeZND/vp6fcqGxIAbUhW+W0I6SxtA4KcENZ0u7AeAtzZ49hfhYC06IqI
	 KZthR6deh37QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B26C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200455361.27145.15360351906157880506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b8c9730d14cfd071f020bf4254c039f4a2be85061589c1df82bff22f5498fb
Date: Fri, 26 Jul 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722004553
