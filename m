Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCDE1397
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777194454; cv=none; b=R5q+otcN2jHlkRD3p8xF4d4sv2BDQdqGpMcurewSiTpqWazwudbRUXLvnFbV7PPMwW8ECTlqvXAYzuO7bACz8WFcdVt08GOpS1S1wIywj0D4YcU+P1Y1A6xqKGYhJScnBcT5NgXKifhlw4pWLLPLl1Hai/XF5oGZKnZ/nEO5lWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777194454; c=relaxed/simple;
	bh=C2VOQ8bc6fNtzXwJHugQls6q06tQMfHxydSzVIOpYhc=;
	h=To:Subject:From:Message-Id:Date; b=SE8XbR7g7TU4i1vL1ZF580hMflrKKPoBcvdeLXRCEu1GY0jy1zVsk6IwPLgGxFnxO6TGXR1vw9aH2hjESSro5K/zHuY92B+DeYcCZiw1Fxn9HN34px0R3KFeyKW8Iwqfv87wcWvzPp//e+vETkjT6BsaRYVggz1OJ9AeoEQqhOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjANzP4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjANzP4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD048C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777194453;
	bh=C2VOQ8bc6fNtzXwJHugQls6q06tQMfHxydSzVIOpYhc=;
	h=To:Subject:From:Date:From;
	b=UjANzP4GK8tgDRxzInWGYz3JdMe/mVjvX/N1nhXmHY2TYpVDoZGE7nUaKZpIB1BsG
	 tkq28YGP11q1HB95Xj7kyoAu4LVeSVp+MwToCZIUMw1xbs1IGR5MZgs9ApF7UncKFZ
	 R3ZFoAY2WTx4tiSvW60YB/V5YCMORQIMqouH9bZ2MU1ASioHYIxgjQl1w6ExPJdfDT
	 a/1G/J+nrdfLGM6FRsoMSKg956S7XTIb/+SPXOkDCyxUnnez5xBk1Nfstl3kSRK+Qb
	 TWRK1ED+3aKuiXQpeRFWADqwC0aIIPeucX4uzzHsOQkgP8HjMfHOa1dNt4UnlIqbk5
	 bVeHK9j0XQEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B040FFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719445369.8019.15387435962650084675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffa440695e914ee4497e87de2d739af9a0c1b49a62a35903e14768d9ad19366
Date: Sun, 26 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777194453
