Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE3623EAB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776458854; cv=none; b=eeFmEx9gypMvvb6xgPNcQIpyKEV262uCHCla4KpmPI7LlKoVFHKsKtFwHyaJnaeUD96ILM52yY/iuIo7IXBVW/xWQIwbBAiEJoT6BIAWdJwsUdJRkhz+pnPEH0j4M5YorN5AmIO7sk8BTPae/DKqjZKFx/HD9d76N1mUR0n7F24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776458854; c=relaxed/simple;
	bh=szhXX2I3c0DuVv7f5D1g1qMPzPXES9+JnT5V4ANOmwA=;
	h=To:Subject:From:Message-Id:Date; b=efTYzfo6ADrkfLwWzg0DtbfUhOcgzWm/4LFVnIxmLtXMceDIMACM0haqHJu8esxB9tV8sC/Az1nIaYSCKb2QiPzzOReqNu7gwgDB0QWzD53fHJzL2MWPSCviGojB2WKv7qUegoevY/LOkyTJ+Mdbndfr5QDgSHN8m6yAnt/Jthk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxSoZ9hU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxSoZ9hU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FE7C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776458853;
	bh=szhXX2I3c0DuVv7f5D1g1qMPzPXES9+JnT5V4ANOmwA=;
	h=To:Subject:From:Date:From;
	b=KxSoZ9hUafTG6poiSVjaQvPIXLQXVoZsgjTGNPtgGFtm75H0E3hYz2yYWShZgtsZR
	 tSb3i4+LlTn/yXG69OKc3OLMFTL3eEEudnY4vhl/7WC8vDiXfy+QZC8srsjoRwnJOM
	 KKdx0f0RdxRfMK/YB4HxJsFmBlxTwUqkbe5aZ+jZUdvzcJDW8bb8z2RqFZBOynYpGK
	 JwcCAAoSauSgrCZI6Goj91rRfNuO8hNpxI15qhnd/K2ww0uRKQ5Me6NqMKfwjzhdOU
	 xFlF865yYTT4WJYJ2j4hkaUnbN48Ga4cNm/c49ozpVjcEf6/LUPPsc50LCquDe3Jk1
	 06b/z3EmzBVaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9987F99C60
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645885368.11777.1330045283162371254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4751e13c856d01320fe1da2793dd61a83a9862c4c02d416657bed6086149100b
Date: Fri, 17 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776458853
