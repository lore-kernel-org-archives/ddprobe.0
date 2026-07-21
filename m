Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1599C47012F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784660914; cv=none; b=SJjpGh8iS5iSFu1/oA1roDuJifEJp5qeo208B4T14sWNP68RIU0M7JGT6JD+t2Y0ypigs+6DxXYWqAnC8JLBqXn3G48blDIoBRNM2pPuo2RRE6xR1br333fyvr7Dz4P2/+43/ItEHRWQCuyFphtUIPo6zboOLrfMDDk/WxzPwZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784660914; c=relaxed/simple;
	bh=GweAuPwssPe+5cUMDxs7yX/d7rhubqPICjCO2ss9KPc=;
	h=To:Subject:From:Message-Id:Date; b=dYeSLlWLAjE5AWnqxGb2qQCuZl0e0HlrCddIMRLp8KRxpyS3MsOlHUEbJQZUU5XARCDvsEXLXi56x7wkwiaDibV6RvhUNdREaBB52L42EronWg4vI3bW+YHppeq+Pmxkw9dYdM67Pz64dMjpwgsU5SXD+bZhSz6tWG5UTnmXlAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4g4nkMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4g4nkMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3635C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784660913;
	bh=GweAuPwssPe+5cUMDxs7yX/d7rhubqPICjCO2ss9KPc=;
	h=To:Subject:From:Date:From;
	b=p4g4nkMAhpLLJ9E3CqbRsAchgPVLlQnr8bQMNW7iGG4WSZl4a/ulf+rSN0vF7YQ2q
	 hZ/anDal+Z0e/+VulV+56WQbAzEcaXCSybJvqsQKiEvQ4z1MP88Ofz82Eb9teVDrbH
	 orJeZY7Il2zabvFm4qmOnfKNNddGH+RkM0heQigm4+kDB57WWIn+4oXPiMd4P6LAgT
	 x1uah7BkPbYkQQc9w5KKVj22W5YI+hfAwiC+rKgcBCPECOvAzwwBTwv6pLDaiaukQp
	 jYFffHKrw/AY6YhyD/6O/AS2jeoZU+ATB/0tY3Stjny1P4nGR78XpnWkkQpP8rEdVU
	 EIHkqyqJFWMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD57C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466091369.10578.3510602189372633079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8488aa554dbe4f14e85709ae7cb3743d0058228bb988739d18862a54a206d540
Date: Tue, 21 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784660913
