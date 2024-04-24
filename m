Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827151591F7
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713952823; cv=none; b=dvcqyo7UkgX+ips9TRjtuQTqcZml06Nfo+chKiVBTpM+sxET3SxdIBKt+utNliHe0MwRtv/p9lkrbIEKbj+imW7FxOwxG1WTk+lSS+lwtn2R9mr9L86DLjI61xvK/zkOnhNUSqiRQGbWYnHQg9xStJkAemIYieniRvyXV/KTc0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713952823; c=relaxed/simple;
	bh=Y86WoqwPpu0YjPrSfLIATXSkCISPpP/2PU8D/MTi8sY=;
	h=To:Subject:From:Message-Id:Date; b=rVVb+y7XzwYclmiK5sxsHGWcfLW5EjyFWxKaF/UT2nZCEI4xGJ+8e94ZhCmTe0lVwfcjYBkbcxwIwxzfD3EayqXuY+8cM24MBq52eBEnwGNhF9DsZrdugKKPVNpgoon8r0URccYAPuGijHlJ4VdCPFlI5Ep2xOWbQhMBstszv2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws+fdSOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws+fdSOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0143AC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713952823;
	bh=Y86WoqwPpu0YjPrSfLIATXSkCISPpP/2PU8D/MTi8sY=;
	h=To:Subject:From:Date:From;
	b=Ws+fdSOgsAetGNcuSXOjKof4zYfT9aQAsr9K/84YoGWE+SZBs2J1y+Rr7dg689KEz
	 ttT5vcAdr9NKDjco53dKGZvGcOP8nh9nWocL3oqQaD/MQCBYR6sZw/VZxYVrQf8YBL
	 ih4P0rVlV88MRCa5sMfHbi8NZnFPP1BoQlBsUGNEamZcLjyC36BwuHiA+Sc95raaBK
	 viKEYiDXXlswuQ2XgowNK6W8AGMXunpP8Ys83HiL4789upPjmrOp933kPeDw7fRNT4
	 KnFVZh+7g5+V8ELwqy9vdNH1eIK+6hEYj9Oy9DxOXYwIpSJiETAwm+TcGe2UxmtLIf
	 hZPQSTGwCYiAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72B8C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395282286.19664.18084442616186453440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a7a9293ad6faf0aca37160ead80e506484519b704ebff6720427c6910ccc20
Date: Wed, 24 Apr 2024 10:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713952822
