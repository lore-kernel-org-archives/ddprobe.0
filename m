Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC915A87C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749833394; cv=none; b=qXQD2dI8OgGV99AsQRt17nMJjWPfoGOX7J8FLJLOgDfC7e8BgbqnlMuIYCGPmutmzgJhq4dXF9xyNID66Gdq5eBMzl3Ge87AN1u/n/TT7Gth2lhCeG1dWGqQkmequcT3Aja9s4I23CzFM5+s9gdn9O4QHGwiTcxUG5jOeDrQ8wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749833394; c=relaxed/simple;
	bh=aKc287dUh9anYHDmVfha8Ky2iHyTETg8RzXoTyGqtZ0=;
	h=To:Subject:From:Message-Id:Date; b=bZXxXPiWMWgumALx4PF1WwPvZEAEQqtjP2VciyIFahpW+oppyEY9yQKzUasqGTrbAuIz8ow/heH+78FVc0kd92xrjc95rl61Phpgw2mcLjcL53nCuv/VqNKFFJnxb6QMUYQr3yYQD0zamNMExa1IoisG3HOFuLBH4krkuPP39/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNkC4IGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNkC4IGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C00C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749833393;
	bh=aKc287dUh9anYHDmVfha8Ky2iHyTETg8RzXoTyGqtZ0=;
	h=To:Subject:From:Date:From;
	b=LNkC4IGhBIE8OsmyIKIhXRFE+KWRsG1KsAtAA2C7TiC5Q4C1CQ1kH4TZhDmFztAsG
	 +iNtwk61KKk7GJ5mgw5MxvMT+2pYrNRYs5XLpEiWmb1QLGwpCajvk1zbI/onK1Qpdf
	 +bgvVOHV2Iayi66i+1Kv8Zsx8dLE63tfBv+mpkxXTITesdj3qrDswrp9y1WrgUArTH
	 Nao3TZ81aahs1FK5unlpIc0nG4eMsA5Cy31RrrbSniIzNz3ucVweo6DDDHxp4KyhDs
	 A8i9zQ3zz/AvwVECs7ov/Xq/HkyEZethgPiQZniituFcT/fN0ZkMPMEZZ84grWNmtR
	 HR/MJN0LnaSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C88C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983339358.20714.1939859126536222640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a57f1ddb80c1867cd8fcbd6b3f3e9119ad8bd42643c1c852564ed4af37ecde
Date: Fri, 13 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749833393
