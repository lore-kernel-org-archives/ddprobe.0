Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D4B21ADB7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774772694; cv=none; b=YSLz475I2NsrLaFuKe6f3hrsiHMNRm/4FMr7dxoHETL74AEQ8BLfvWWA2ZqZWs1uVTZBItJPrXjKQ1Px7TkJcbUq5J0ow44zHWOZ2TIZzYhLEA/IkCMAS2fcD4LErHpBIZHEXgUzKQ40s/xuTgNjlRyClwnMZn01pdDTXIXLQjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774772694; c=relaxed/simple;
	bh=CgFeL6gV6dDH8MaP8VwwssAu5Nn7zDzB1EtrR8vIAOg=;
	h=To:Subject:From:Message-Id:Date; b=ZzHzs5hHeFzuTyTqfybsgdgbNgioBJ7zAzKPBc/kBmKN+ml+YDGqWUHbFgPsBFMMiVt8826TG+SMrN8XVMazCKXWT3oQEtuyvp6fC2/DfJ+oPAySUjJx/lSUWjkQstNKHYiaVGtnlmhUiyLHPNJbVY66RbTVlsbqdUVBzmqqmJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJbGcXSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJbGcXSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA7C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774772693;
	bh=CgFeL6gV6dDH8MaP8VwwssAu5Nn7zDzB1EtrR8vIAOg=;
	h=To:Subject:From:Date:From;
	b=GJbGcXSFK7lrnklSxwqEua16q7F0QgZY4IKtx9Tqi9I1RHL9Wp7BbXmSK8TpabCvI
	 tAbI1ambM19pc9wrPuPpPDYaMF5v7hJ5rrvVqe1tZfBkRgvsMk+9J1JaNlzluftAIi
	 deVqXn5KnMA86Oj1vj48DZMEBdzeZAeruTp5pVuljs3ObL6JXj113RVKe4qJOckWuB
	 Emg01fPSErUg6wn1ms8rPekAEGu94bbERteVUdUslwl1TzsqDKfQlVTD1X25+LzDml
	 bWH+bk0qKpzHp+h1znk8RLnrzMKmaFKsJ6kJ39gvAcQiAZiWCYcBgVjwCmHU8mUfWI
	 B0ljgjmJQa2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369AF3D5F4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477269358.30898.7190917454958856717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7434e65a201819f3848404e43df11cfed13c9bc95026c956786fcbbfde504d
Date: Sun, 29 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774772693
