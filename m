Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFE12C08CD
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763473914; cv=none; b=bD4GuK4O6a81dZbR2a+VWs2WIQk7RHG/a3JKnHwPkDrh/qNmj4hqetQbhlebpig3thU1oPBcinVlZoV7xs5HZrm8I5lCwEZJlIxLey7obEZpc53X1doWi53acphrseFfTE7zJ19ih4nYn2vmcBUlzy0sAPA3dDqhIWY7pzxNjX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763473914; c=relaxed/simple;
	bh=ubPMxxMSNc3/RI1mBoTnM+RURopR0v7sC9RuKX3yKvk=;
	h=To:Subject:From:Message-Id:Date; b=OnJhkgUcl2X7W5DcEMq6kem5r/HFVZ17RpGREENbFxKbdvChdqGqIrtuzIXMgEMVx8pJyoAFr2E6OaTXh7ju3eC1TbMdKIIJBjOP49AJRV1iIkofmwHeh5H2Tw1zEbYkZ0JiQFbgk0Cud30K9VswIDuPBCPEdWEGIfC5oRRacDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwuGCT+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwuGCT+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8E5C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763473913;
	bh=ubPMxxMSNc3/RI1mBoTnM+RURopR0v7sC9RuKX3yKvk=;
	h=To:Subject:From:Date:From;
	b=FwuGCT+yRY6vnrh1Sy1k78M5xUgmc5fA5wd8huYT1Wil6Gxg7rhzDU/BXYNfNyTr8
	 Vku1MJ5wU7FNA9FWAZhyKjMW12sGjYHk2qKgv2B43DYGakgJT4sg86LRBpqPaqtPKL
	 xXJ8PgAuoyDqbR5lUXmqTeqnfoWsUGa8KhIiDrEIsX5PPo2uomYkWEYfhvXiJwTKES
	 FG8xlNGzFaIY7lTmUeFQzEnXWKtBB0bb5WOCtRP8wFgE+lDloWOK81C5vvFicVY/l0
	 ZiMQIS+UNK2gpWWuyXPtYwu6NTHH7slj01dINQmiWnqwbYmPWXAORHcgn057Nnhyso
	 +xUCYJ4W5TLmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1ECED63B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347391358.18069.2461594354740578359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb3fbf7b9fad8786682e60974009053036a86d512cecc458425e675fa8b8be8
Date: Tue, 18 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763473913
