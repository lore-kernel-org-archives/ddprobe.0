Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CB417578
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742011735; cv=none; b=We8pfP8jjymqVrJAXA7SxTp+sgJcip2ZVoEhq7aF5eCBBGxAGLaBCCITU0VcF78IuCZ34B3jZMSW62GH3i2y3edCOfQbSr/+2VUq4S2ihRHm6DF1Fsw5TSbSdby+BwsuREpeWfNjClnTWfjmiQ4O6F9BukGCOLrib2CPzId0l0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742011735; c=relaxed/simple;
	bh=WGGG5ocMptcXraeNFPCs3Q5CiTaDGFC1BDNheeUUcbc=;
	h=To:Subject:From:Message-Id:Date; b=AItfBHCvdWQZqlm8mq2rP3qtIghoW96JeVp1qIYaNSI+w8W6bI+g2CJkFDvEDA+p4J4tnDztqF6IKmnqdP4YTe3B/RCekPFzbAFZuI7DmVB7Qbna736pOx1nCF1Q8H9BgQHhuNErAcgu65aAjPA0wTNBjA3H3qjbklhw7PE1SsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baQiAuKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baQiAuKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0EEC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742011733;
	bh=WGGG5ocMptcXraeNFPCs3Q5CiTaDGFC1BDNheeUUcbc=;
	h=To:Subject:From:Date:From;
	b=baQiAuKDSsdrY3BycnJcnMoDkbZ5COGG1XRli8ZFlwcau0ylAqD6ZR0UyL6n0nhI4
	 JOVaz006s7EaxiQxnH8iF7RMWbiLRrQlWAC0vNpFFb/cRGWv6aw9J1uDMip1dSFjoJ
	 iX9FK6SADK94UdMWdp2I3lyE9fLwQ7tMrxLCTdKh9JhpLVLbEXSaS3PzUQxZQMW9Wt
	 H70ohxywqW+zEcUDv3/KV6+bPX+J1Q9eBlhwOOZ5ELvkt7gzC4wJGSKOPIB/iVav/h
	 bOngwL/kauvWwVKxuRGbVu7uPPcZGwZAmC9gieHsZlrc1KG/xc2xaIjvOSxHLrlHiW
	 Gxvh1G710yw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFABC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201173364.4038.10692380269404830039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d438d945df2e4ac466621c05746a7ca4281db4c4532c3262d76125eb476a3943
Date: Sat, 15 Mar 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742011733
