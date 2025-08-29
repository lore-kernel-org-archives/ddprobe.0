Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF612848B1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756454393; cv=none; b=fEe6pgu+nWS7LiuTgJ+UKFFThZcNdKgp065XAU7dY0pq6eTjCEphubEd7iGM96lURF39yT1+9C5qggqGCED1owpWCi3f3hkXd6ss+uGP6uR5VzbBrMR2hN+kGRa4Id9pDyqRUYoscjKB/Yvy+nW8bJvBD2mMb7ZaemBk3i0ykfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756454393; c=relaxed/simple;
	bh=mT1Lmdi7l+svRoAYjGmMhEBdndb+oTHmaoFsBDEEwrQ=;
	h=To:Subject:From:Message-Id:Date; b=F6+s04zLmBEXDcu1NRxa41eZ99WDXm9/MBNxLRH6L/9w7KXanbbeFVizvfOT51UDjoWePBxB+vAMlR7AVovMPXJk6/OiOCBRf65XHGUlUarCBv0+EVvR5wr6D+Xn92yUPOsOUvdm2m2F6ZmW8U8ZWwxn52zlSuU8tiezcDleuMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2HIuLwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2HIuLwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1F5C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756454393;
	bh=mT1Lmdi7l+svRoAYjGmMhEBdndb+oTHmaoFsBDEEwrQ=;
	h=To:Subject:From:Date:From;
	b=M2HIuLwDaSckZE/mTMadjYW+3uf4DQ2C3J/0D1rjm4alo/JA13V48YLX10xTaliYY
	 BdLHoqNN1FsNGnjdjuTHoVIccBBEVplgu340nNc4wWi8DFGW2vqW9mvrHN01R2WfIX
	 9qZEaBuo1ShUJddcGqQqogc4VrHPpPMA+09hhQcvX7Z5WCOsY2umqTE+F6+yVYCuvw
	 36hj1vVHEVBeoEz3EkmskDj26VGj91rAHFTK2rWBws35eGgGv4JfdWqdoUmMX1BKxB
	 UcH+kFzMQPf2OY3tR2+HuYG9+QMoHBOs7z8dETTgPV9wX9D/n6QoNFo92qjOevdJ+N
	 mw+cDWwCkTFWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA9C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645439357.4146.2762958886714088442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6350720d76b6372f2439ad4508d5ab45b379370e506a4838072af4f15761c79
Date: Fri, 29 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756454393
