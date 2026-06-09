Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E97533F5A0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781016934; cv=none; b=WzKn5Op6G5irKBAOK3fwaFFsb/KvPoeRojWFe8Kptxbc/3m1+kp8lq/quff+OhTD8dFzShY12+aHUPvvhPGpFIHHw2hf321dVWwNVLD2CUjV/Qsq+HWibCuFF3DW/HYR7jCmp5h0AtNqRmnok5/d3/Htkag538KWnVLoc5batcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781016934; c=relaxed/simple;
	bh=TGelWJUcu2rR3RXWLYM3UZDzZZ3LsKVFLR73QCFWits=;
	h=To:Subject:From:Message-Id:Date; b=CbXNYdC9+NnQFnvzB91UKkTlCZuX2KJbLGIVL0WuiBcAQLOJAhtUWIsNi44mFpLOvHk5NFL09AKvSRY33gz2wnYmo/qig+WkD4gzDtkrh3xT/8utEmpy1+vJLt6kpfXvg1fJXLf0iYuCmSnyt8uMnSpPfS/QLFqI5yq5jN2qYps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS4UlR6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS4UlR6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E74C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781016933;
	bh=TGelWJUcu2rR3RXWLYM3UZDzZZ3LsKVFLR73QCFWits=;
	h=To:Subject:From:Date:From;
	b=JS4UlR6Qe+8kuowwpD1AtJEVPBNQ0NZwA0YEqsR/KPNYmujECzh9hZMYg74S7HHi/
	 oTzqYpcwzV6IDqd/jQ+a1mMDUnVPp6qQhKNtNBgqbkIOA8XrQqLEuhKMfOCB32sLRx
	 IyC4BJCcD6uVOyTBQoBcaN4vRDNAbGYHeDJ7DAvxWSASH2rmg/t/gXn/3Xn5Rae/HA
	 WnTGKYoju3hRVvl+ZUUMzt5Hp9kMvwwtJicSt4oHGhTIvIyGObzrhbDvCiO6ZfTASV
	 Ez3dl6oTVJ5ZkxhQixIgmn1eLHnKMxSbsqLEA2A/GQbbIWcPg/t4KUK9dC8lzWFdTE
	 DNSaEZH2GTm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45F3CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101693372.19693.162528130558760566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e021b474e590438b8832d4614982d4b82ff21d2efec87e978197454c5f73ac85
Date: Tue, 09 Jun 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781016933
