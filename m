Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCA924A06D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746521995; cv=none; b=TbWnDLRJ2idHvesJ2y32nZOJPLzDgrZDbBnPoVh8D4BRWkNQZ2y4vVQ8UBuYQvOLQdbxTxEAYThxaq5gctIqMPF8QWOZuIpnE3zrx0S2kJlRI/4wXNFn9QHDqA1Tj0D+kySrQGOfqiREuP3tI4PiGwUnryDo99FfPq2RGMeLvAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746521995; c=relaxed/simple;
	bh=vC6ZhSYXZ70mImw361AoA44NHpjubbuzVAeEGpk+x1E=;
	h=To:Subject:From:Message-Id:Date; b=Qw0fM5x1BB6BR7p2EApPhXoDrqfiAT9XLIvNxUl8PthutkbmhBrWcD8/H4LgVAqUjT0M1bhpdYTbx2Uu2p3KHl6UTUbmLxkPimBW/hoky5+FS2BCTPl0UMrn7zh1kcsOsieRbgBWNQjLOUFq61xQsbhL08Z1SZKiwk55xUU4Q0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nb5j/C7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nb5j/C7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C681C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746521993;
	bh=vC6ZhSYXZ70mImw361AoA44NHpjubbuzVAeEGpk+x1E=;
	h=To:Subject:From:Date:From;
	b=Nb5j/C7PoRpGIC93EriYPoUHNYHKowse8DT9v1XC4NfDx+rAQ+nlzchDf63A33giS
	 ueJuYhz1+C684Ft3R/f0wtIqvYfRxl9ONeijRGsDA4ROeJBODGBJp8p58t0yN4JS4q
	 Kv8p0KCfJUqkYMGJZi2IwLHa+CrnTK7eYsq/8/hSOr+psBJtUnZzaftW+/NDCQkhKV
	 OTP9GHifXwFFDIY1cijNyNL3qLJvvlwIF/qdP7sv5Trye5NWYuZkFyqGOQTE0zE5M8
	 SKscQbxme0Q9ZbnUhIQTB6SRWAciQi8MnZyvWruGIvotnRD6RF49HzgtzL8X+tB1Sb
	 lm1CoipqBc99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEA6C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652199357.27544.17570519651734450984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36241b0625f467bfff788cb85e747aa2e40e5a44c1be13144885688ed61062ea
Date: Tue, 06 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746521993
