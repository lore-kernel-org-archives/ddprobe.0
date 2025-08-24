Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB06393DCF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756022394; cv=none; b=rzAloLZrxSy+SQ3Yap3bsUfaETBwNT/pAQy8+3YLNFq1Wbm0WZDkWaHLvUFCCUqzfSQuASyIa9HF/zsfLWSUd6RosNVvQEoMz2s+cPmcGnArKX77k6hiy14F9fSnba32g6i8UArZ34Ut/PdD076M4zVGxPAoDT5WGr9dy8yTMYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756022394; c=relaxed/simple;
	bh=aH58Gd4lfAhGkGE/J3+1Ow6MMKt/cKRqJffWUwJrg9E=;
	h=To:Subject:From:Message-Id:Date; b=cOARfLWuAibd1pJO40cSrnB6TrOTJBZIwOfqXtwUt1PNBz1OMgIpG81ZUkERh0T/Wjh2Nr9DVBSsrMjFPw8fw65t/fCakwJvtcY5Geg8qHO7BmxjCpzJH8uIdHd75p12mTc9m8L533HjBmMohRQ0T5V/HeaRWvIiknEBWTxLJoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFYzbY+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFYzbY+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756022393;
	bh=aH58Gd4lfAhGkGE/J3+1Ow6MMKt/cKRqJffWUwJrg9E=;
	h=To:Subject:From:Date:From;
	b=hFYzbY+ZVBIylDXNG/0L3lSooL/ONC00PX9FOplpvSK+7/L+iHM8/Sa0Cc5O4527y
	 x7mdgk+VxkxAgANijctjxbhHcgAB9UnO1KQLoazxdfSlSi+92ClTG7NelXJV3w8TAA
	 s0VKavLKnxANyd5hCcZkyMGl4IwxlJwMxKphe5OI0wPp+ZDH8hXejqqvjqR4FBsej3
	 IjZDphKr9+4n+/bNH0qoEZMQYGapWQ16lLrrnAEt53ldQ78rRP7++DPVx3uE+YjuD/
	 4XbgAl1GGbCFLt0xiEgCJ1xqygeVF7rC0ORfe4BeokOe79hQUPVzsD8JW2WgFfQquj
	 x0X7HhbwHor7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E6CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602239359.28207.16637689041937547106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeecca4b3b377431082c3a7e16130de403b7d1f47768d09ec995d8953ed44937
Date: Sun, 24 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756022393
