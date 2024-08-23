Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D72261FFC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724413554; cv=none; b=VQzrh9JfizcLtDcqyBoHKPAN/0bhGSbiQIQJ7owL5fcSW6N7xUh7ErcMm2McQcZuWzm0UbfzpGNY5Gb98lv1lvKlKX26VpGS85AXtw2cIetoLrm1O+Fa6kFsIHUvZHsyWe5UcRF4e9a844AUcdTolNcxtlZM1GnV3/hh7lHw0ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724413554; c=relaxed/simple;
	bh=zRqWcJColwANO+/KfwYNnZ/yXI0VDq0aTOrJLr5G+Yg=;
	h=To:Subject:From:Message-Id:Date; b=RqFYzS9GrkEdjlNScwWVyOdoIDPVVbhxKN2liLzeor+cGH4NvG3YR5A/BJe0vnP/AjyyaUA6p2nCCxb3xjCNtctsesNtA783RrkXBTvjqHMoeZwAsnKblo1dWL9TWnczBCOWUrG/205XKyOgD0siT9+RShh4BYeN8pqyUeD7uzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXM2rq1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXM2rq1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0EDC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724413553;
	bh=zRqWcJColwANO+/KfwYNnZ/yXI0VDq0aTOrJLr5G+Yg=;
	h=To:Subject:From:Date:From;
	b=GXM2rq1lRQ5IAKXaoEo7kklx8MfuMVH+OXX4yF1S1uujDBednLmmYlDls1MCg3MvK
	 svLA1mWkCHKYwZ6Gsg7jChrpAqea7cPoiBJ49Hfu8yMfKFuDOGh2MDsjBPcrmwJhh5
	 k6Y0Pq9YYo66xAjg67uJgkPFBHDO0fy7s/KCHD5/nrSIYE74ovegRFJX0uWre5Mw1R
	 f2BGPnetA3WYGMDwMExcFoN8V4VWlgCPPcJ6xcM6dihsGNGtbjg/cNJuNcVUndPoNY
	 gMgyjXYitzCA4U4Mg5gpRVREcNa1P6N8PlfbHsOzPiYzyNqAFDPhRt67SdOGFwYRkm
	 ww5zXCrxUwuzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9AC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441355360.17527.11569022830166800627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76523aea85932b2514a8ab7b4ab15729c37187750371c56ab820424d568e6ef
Date: Fri, 23 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724413553
