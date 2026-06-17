Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FD437FF54
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781696194; cv=none; b=sCAnqSwksvl8htHzZ8Gr2bEVKIRWnMwHphbiium+dC+BH2NVpVSvSxiHf7RlFF/T0uS96W+5QBWQYOzKAVHjxwwzlujRyNdxFx2Mhu903eEb0DTya/xj+KfneoTQxWs1DT1lV88Nzcy0eU/G3FrqHRQKYmLU1iNnXFgW0D4nLxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781696194; c=relaxed/simple;
	bh=fbl9cSRj2Tj/HCi6SQUe8n+8p/wSSPDV/xGT5MhKTvg=;
	h=To:Subject:From:Message-Id:Date; b=gG5bz1LHoeUfodvdP4lZijaeDddJh0Ok70D1AhIybWmdz4P92dwmllBs+hhmo9tDZwk8gzYYExDC1/3/nzqZNFN8Z1D+1cM3hJ94vmhLOXnY8k92mXMIotIjsVo5GeYS31pGc1VlMk6IrnWu+LRfWmau4SfCX6k1yLnmUvgr0no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfTd77wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfTd77wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF36C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781696193;
	bh=fbl9cSRj2Tj/HCi6SQUe8n+8p/wSSPDV/xGT5MhKTvg=;
	h=To:Subject:From:Date:From;
	b=YfTd77waol/P8blwmz/bcMLvcZ3W8/nrlkHzxU7t6r+621kjTBpXCMTnj5fEEKiQh
	 BmT/ELTRjpaxrxtH+gXIet1fVXVE7E0XNLT8xhqwBSJn6bnmxohVm5HotHqHwjBhaU
	 RObJaQSCTFEM/PG84uPqQ513sh37N8RKWXOKyXPoL1J8a+bFNYD+m2Zd2ovB91Ccdm
	 SeCTWyaaSfNAZ+63sT66V4opLrlflFI3DFUEoT+Ehy1LY/zLqnzEi1ALkQ5XD6ks+I
	 A7sjCGMbgLIHJOK3bodq7macqVJgzxDABCeLCWP8aoHB3tFeG0kMccqgsIZ2WoGJVr
	 Lh34Ekbcdp2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF64CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169619370.31195.4162349564334526816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de17ea1534d0e81697444ad0809050025a41ffd11914c9b28bf728ffeb4cfb84
Date: Wed, 17 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781696193
