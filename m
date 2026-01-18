Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BF63002AB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768767834; cv=none; b=FhpFnpusoJGN6CtyjfuIXB4rg77YEfrdnJhe3E8IrON/iX/LVL+2xYgyN9QpWHN3uPggoDgU3L6NfgNHHV62UkhFfu3Xphh4FHvE6yc5bKHEvkHhswUsGtH2221dIEIzBdbxTXWmmdNQjOMcht5M7rP9iRSS3tKNS2Tr/l5D4gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768767834; c=relaxed/simple;
	bh=Aky/6I24XG2i/h5mgCkRkATfbsYrEVuYovYXdBSOOIM=;
	h=To:Subject:From:Message-Id:Date; b=tKLHhMzHFZsWSNvr420AvuedHpyvZhdxIWa5JOnFcqgZbQZkogGR2qGEnE8zEZyGP1aS+Pp6Er2z+I5eJbmPHp48IRr+v65Z/pQcrPfDVxETd0kbTWGL8aefcImqnUtAGh8E9etyxWHQS94OHEyZh8Sf1meqxLTj4bsoKrUXqDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBnDjnIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBnDjnIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC10C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768767833;
	bh=Aky/6I24XG2i/h5mgCkRkATfbsYrEVuYovYXdBSOOIM=;
	h=To:Subject:From:Date:From;
	b=GBnDjnIEsP4VJeTufuvKbhwGlHo6HQrLhFMz3PXpUqTM5EPxbRHa3h/DjwajRAojx
	 QDcD8BHz+Q4M5MZoZWhVRNyWmgLzyz8sS+s3BavLmO6hMGp7mRvqiabpuEFwwfDbI7
	 yWLrGsd+BbGSVIEhNX2IxgUT6aqJjCHNdb8pDiViQNlO3lxOmqengfY0IzTKYyilqi
	 ECOBWMwJimhhukGJR1zNPD3/QqStB9p8oiUq8fHEumAzTuapOp3pcnjbC+0MIA42S9
	 OZ/qIvnVEBm8GEuca9GHUj4vi7Kpfw1iAfEIvhVYaiNsXMRLHG8BtcqhJ5MX+7wr0U
	 cWNzH/sxGuNfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADEC98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876783358.31763.6076219038287614996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1645a547cbe20ca300681cf4a996d3329ec445477a1460479f20a41d5200ee71
Date: Sun, 18 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768767833
