Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2AF101E6
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746752994; cv=none; b=rPZfVjvp8sP+WKfoWOfb37JDqcUqcORqEsriAl5epGp7df0zpTWj6zzs3S7DFaVFaUUbd+NCocys2lC76c1YfZzlz5T0KviuiJA6HcDIZ/VAqE+7jxJqiGQiTHFLHrOCM5Th9tTvne9Uo7dw30jlXDwLv3JwPIBt7e6qnKhhp/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746752994; c=relaxed/simple;
	bh=2S11ED/Lvwm1S6Yc/vGPC0dVsJrn/KjJFBA2Z59aC8w=;
	h=To:Subject:From:Message-Id:Date; b=d0E/Gj/2JvHLGXBe1j0uYUJya8xEvJEdMdQJLl36ZZpPo1B0lHwj/3PqM0blNmWTILxZnxMuhbNnySP1X30HALq5R9Bes37YBS+vGsuovAiqce+p1BOMP0sOeUSeyDEtJ3GxhoIk6Xrs9QVBTOeXSjAowx3yQn9u/VG2SgVejZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOVxU0mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOVxU0mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A15C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746752993;
	bh=2S11ED/Lvwm1S6Yc/vGPC0dVsJrn/KjJFBA2Z59aC8w=;
	h=To:Subject:From:Date:From;
	b=dOVxU0mXgpuXKOmN6paHc5AN88G1lcJJK9ZZswZl4NQIAMPi9o7HKcXcW15kuEoWG
	 g1SvRXprmnHmwZG2sElsXIyhNetaUTUDezwWlsAeToIYVF0CoOl8GL637CaIS/rWjD
	 zC0nPdOcrgntLHYSPNeJlTRN0x0RzmpsmwOXHwzNf9iRF5RTZTTHmkHbr+BqmHzAzt
	 OdWHZ7KKlUxN9PQFoIDRLOyAuPNdBm65AQffvLU/He1jwt9ixNZ7GAocjaEeXtb4en
	 uGgsHywcU2g40snRaspceYVM7R31jLmJtwPyJN5HtzdTy6ad4c/3aYZl5cMv3yPyxX
	 QVIUeUsriodDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B4C3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675299358.32611.16956239715124139265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90cf34bc3c521c423ebc03ac17c6b81810df9b34922338109ca134d6bfe46402
Date: Fri, 09 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746752993
