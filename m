Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEFB28F7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAD9C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670013654;
	bh=DLBED4qN8t4oecBl77juFFtv3nlQLoMz/pIpk7rSeRM=;
	h=To:Subject:From:Date:From;
	b=FCi8NIxl76IcaF64rQ08Q09d6/08MDDQpFLP7wWAriK8umstD0gcyUC9YPU3KzxLr
	 tIE0NwV3n9AVwfhLJGiuCDJrrSyF1laPlF6adOwZ1EwGVVgV5xtNQeNwXY4tYYF5Wy
	 wMcF0+ewHwWXN2kVrPY7akT58b7sjyQP9Id3JY7mtpRCTSEmMB1mZZCs6QPJRYKxsw
	 qWyR02Cn+QVjbv6AA9Dsger2TXUh9KWLO8bR7zAm9pc1n+FFtWctVl2bo7tjRsbg3l
	 UNpx8EImW8Wwmy0PWIBEjKMCST9PizIPRmImo1gYU1bpywSoDV46jpk93FtpAL51ug
	 GHPgyxSXtmJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDE1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001365435.5178.10421985836984479174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4d75e469f9adff8ea483f07121ea3a17bfc1fda09323a3b6fc07250fc8fae1
Date: Fri, 02 Dec 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670013654
