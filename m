Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E9637C0E3
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778610034; cv=none; b=FMV7toY7Phwu2Tm9QdhvyQdzHhwBfRIvPNFB95OwFWsUTKBaHdHP+a7FmUN3u9cC0dG0klG+5Bne7EeBIOwjWyVI2avOl1gx2rS0sTsCLNORBywl+BAllZuNkJHi6v+b74C2MSAcCUxn0RYvcYHB4CgmRECHgddBBTr3COWgLo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778610034; c=relaxed/simple;
	bh=GTyg/ZOuf8uZ2j7yIhWIchXr5lsUTjxcaAveAc9WmFM=;
	h=To:Subject:From:Message-Id:Date; b=UnoEcabURx7ePJKnT8G1iYO8+7cPyNnRoEgWee5eomcTpd9TYI1oVPPV9INZiqOn/pGjUInsQPiYehH76Ux4Vcg2rMAeVEEF2sfMKepTxzC3qzRAiQiQr6LKNaY8MKl/Ah6N+bzywhAUsscM6B7ONg9/38U9GX1K6Iwa6I5r98s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO5ihUhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO5ihUhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8D1C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778610033;
	bh=GTyg/ZOuf8uZ2j7yIhWIchXr5lsUTjxcaAveAc9WmFM=;
	h=To:Subject:From:Date:From;
	b=NO5ihUhNk1F3JyOEN+ULggPanbT6LkF+hUiyp3raOQmemy97OroqkMDS9jLiD9Okh
	 S27LV8WZk58cUb9v0ry0duLWMHHmKOnu+oxRKGMGUzJMkPuE1ltWyqLufWDzoq2kji
	 QEEI18/7ujoW4mXy+LUnuHWC9eGg3zc6sahh9wjbDiNp8xA4CC5n4CnN3wLiEv9kbG
	 EHX9pZjooY4Xn07P33p3m0sht6Q5mH5RrQOfHYcLv+JgFheoIxcdoSJUx/V7P6Q/Ra
	 kUZmMoK5/8G3n/+8IRA1n/RX07fRnZzPcsKpHkAYVUSPh2Ww256Xjd1BNp6v+MTGA4
	 5HSb7fwCCPnvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE7CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861003369.31391.3204683768923084524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e840ecc47d0557185a75805cb7491eccb0495111e24e77b44d1c5248241601
Date: Tue, 12 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778610033
