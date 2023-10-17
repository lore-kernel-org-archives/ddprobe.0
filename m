Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9FF450FF
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 17:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2hPpt57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0704C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697564228;
	bh=ZRdlKRK9erkIpnzKa+GtDbXtGnCunuGgbhFGdC2lwRc=;
	h=To:Subject:From:Date:From;
	b=N2hPpt57G9zfccnTx61CG/KAyl9/OhnfZOfMG9aD5yuK7M8duNNoSaJO0+Uj8KJgT
	 7FfWm8t5FgXE118equoU5pK1WfiqqsrwUBQdEmtA7QOySaDvXJ4JKc+LfeN3PgdNEg
	 9E8kanLrLiiwLdaBt2zfI7tMqZgAz3+JaSot/mscnhJwxPNOUVH6NysPYrAhCndeuD
	 lhHh63IGQ7XTvuCecgNJPcjJwrh+DW8YtDE8QVg4qRo5/xV46aviZhszlluMJr5Civ
	 YRCB9MwVBgxIuJmSlTrVz15eEOgUBCBkpv8iuvEwJ02Wxvun6vEG6ihgjh87uozP4o
	 WxYx4//fqHjfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E80CDB483
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169756422867.2042.9294093905383889628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec24e6a7f3b144fc61e224b5df6f57de10a158dbcbb00f0c5654fb876e1d4a6
Date: Tue, 17 Oct 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697564228
