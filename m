Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5438114E2EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717271723; cv=none; b=Uxc8GJdepeUvhRwsAZ40EylLfBeDmk2of3x3BoSYiMGUovRkmuhMNaVNmf/UoHhVllqX6+4J3m1nUyyw5BPqWhVx4arS2BZCBMVtx0kYTmR6JUeN/zH8v7pIxjwA2psUWHi19Lbwbp/2T8pVFP6Nz11FDtv5epxYMU2dxJX2Qbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717271723; c=relaxed/simple;
	bh=83OjE/98CgCphfurItwg8HpvGQkw/+NJgttU2GMeZAo=;
	h=To:Subject:From:Message-Id:Date; b=uUYEK3HLEe0skHdX/o/8lSPNrudsuA6YABvcx6rgWgERHya4zzTmVz1ud4wUiSfYo1dpHtYCtTYVk6N5MB26TCcj8d0mRkWMkuawIwsDUBKFWVMCULw0UJ0z5LIixD0X59GY27r7V+g1Agqg0W/0ukVzjg+xY/2CF6l07iKWfJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi0nPK4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi0nPK4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F22C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717271722;
	bh=83OjE/98CgCphfurItwg8HpvGQkw/+NJgttU2GMeZAo=;
	h=To:Subject:From:Date:From;
	b=Zi0nPK4xjjtBcdyvVmh8bCfT8kTJVHZ90Mf2kWY5ZYmmTHst30wSX3PGjh4TdJQTG
	 cuvPtV81M68VUUEiYYlyuUQ2OqA5eEfFPfbz4nyyHMROh0Al4Ul0tZaE1SLl/DJnmp
	 e2LRAXNQ1tx031DKBgJpvVausBBGhnQ2tg9uwxFFoYz2ij21z4vbWUrFEn9bV92A9Y
	 3TCHCeds7HVcveB1fJlKx1HketmcFsaCCdTEVmxEs1a0c4noNA/Wf5aETEAQxhDyFy
	 OKD5B7PW+tdC7g755IrfyjNIcrYE3fBXpE6vQpUzil7lhplr5yjeR5wa4bWpD0G6h4
	 ANITm/IC6bvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3223C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727172276.924.8559004875199589535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c183a94c0c1227c9c7ee1aed779817d0cd09f8819a09427c197c4009c6eb1b54
Date: Sat, 01 Jun 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717271722
