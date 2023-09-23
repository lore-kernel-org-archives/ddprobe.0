Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D1818
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 20:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33A5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 20:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695501308;
	bh=KfHmqq73vdwnJ9CLCGaD6Pgc6bLk+Gfw2SFu1FyTPE8=;
	h=To:Subject:From:Date:From;
	b=FohwBt6/GYXF/U07QagUUGN/MuY+CjzplAMIpPcKp2/eLCEnmkRZzmIQ3MrKamFWp
	 Sjf+joPvZqjNlR+jFwa+Wu1tkG2LAmvITu4/nKk+FKgdLCDneKWjEMEvU4T5KUxzyl
	 M/JpPKUmf+bVW2N/Zsv692m3Q8U0yIaYdLjjoKf/ee/ZfiJvWtjbz2V1SH89LYB5QU
	 FQ4Kv6SzpOwyq8XPb8zH5h0U9puHCz/0JldonTiRUQSvzy+KDRLHTOFzg6syoUOupV
	 H4yJ0vQgepA+/M198Twa6mxYI1kNlZqlZAYYrJsMMrEnNq8CsJOSPQms5ApiKdTuYR
	 gtiAdJjgwJc5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E0DCE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 20:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169550130867.24908.7245511201408302989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e2ba87c419cbbb888eb238e1d41815df06ffad2abf3d84a8404ef00b0e6485
Date: Sat, 23 Sep 2023 20:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695501308
