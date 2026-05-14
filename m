Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE33D6CDE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778746834; cv=none; b=kyRoForZH9iyxKismqV5vIodPh2oVaLYPiGlLvIFGN7O4CzSpoX+3j1Z6GF8cJVmpQIP3kz5lSF4yPrUiaT2t9dcnYrxPrd5gx7j2jdeTpT1z2KJNEVlXcXuo70zpk74sJYq7p5jLRecjffrrfW1UmlpTyD46SPBBhl/u/EbauM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778746834; c=relaxed/simple;
	bh=dFXzxqMu+wtODO9VSiSbqufwzL66UP5yHMOvbuAEiPM=;
	h=To:Subject:From:Message-Id:Date; b=LPYojqqgwGHsu09DhGy4DqM2PiKkeCx3YS1dybfdlWi9SL8HLLD7M2iHNxjZNUTqasPBTUkz8+oPPlsVdqDBqUJfLDorVHoLQf9Y0zJOmTlUBcqKERRnH6b+52T2MuswwxqkicUxSm25jIyXE3pglk3PVxueudjgZ9YYYzTqfDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2BriM6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2BriM6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB4AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778746833;
	bh=dFXzxqMu+wtODO9VSiSbqufwzL66UP5yHMOvbuAEiPM=;
	h=To:Subject:From:Date:From;
	b=p2BriM6Gi3tGLBSHU0Jl+QsKU5jJZbxor3z38MiRcw4Up/IwN6+tMEhKMIU97WaLs
	 OJ2F6odrrrzGLnGFN0J4zVaUZveEZhCIl3s0yN6C6clN0SLz3LHABYwUsIf7tSzmig
	 8OCBc2D0HmhWv9c7qSjltJXqKovGCPRawrZpy2KH5z5EyOTMitr+NpyqjFHY3RjGi7
	 eu4oQpbRCXAj4vdtsh3v0k+UMAug0duWXq+whtKrOYVaHJv7eA7PRFaNRsYWKQ3WwA
	 JuTX2mZDnl+me5cQI7Us2O/PRJEy9hmpOZfoUtGSAEeR3tAaVucEfdmSBMU3iBOJvx
	 +ya8DECDDoPgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BFCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874683368.19996.16170256615696343060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7dc74a43cc1eb52a75d4af6cdc95f70d217626cea61174d6383a0f228363b9
Date: Thu, 14 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778746833
