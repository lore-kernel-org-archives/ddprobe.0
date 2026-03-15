Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A703FFD
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773542094; cv=none; b=ASyA0SZWQaRLUPKMRH+eGF+PrDwY6ggjTg79aiA7vel6ZJGuxlqyDg044dykXWDxVXQEhjIBZljfT8smGOPmNFi4gLK2I1zSLkqhYww0v2k7xTvVjUjjm6DZAKUuCDJIf6oPeYiFOt4vvmVbuq3FI/up3RJT6DH7SdjXLbv+2F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773542094; c=relaxed/simple;
	bh=DbebnEwSfE9D/wGa6Ge/7cLU+UFDi4XnPnP7sn0+rsU=;
	h=To:Subject:From:Message-Id:Date; b=g5hl96qAzceoFvd74aJUENqj1c35m/LKSDKQq0IzpMewixe7QQb3OK+wH1gP8vPL9hrp6oYX6O/jlkjNUszaAcpgp0LJMIhVxLHBBmSN5y6rj2eJoBLtRs2tui4DVx/80vSLk2nsLTFFEWBiBDcMR9H38Zjo4T2op6wWNSoPs5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKfUuNJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKfUuNJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1E0C19423
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773542093;
	bh=DbebnEwSfE9D/wGa6Ge/7cLU+UFDi4XnPnP7sn0+rsU=;
	h=To:Subject:From:Date:From;
	b=AKfUuNJpfUCzeCC7pJlkwSFn9pHu0J1vcLWOIWDkYhN4ZTJeYCqjlwvPKrCrxOOHM
	 ZXDGHPxQhJtlq43ilEvg4hlDMiRsifuCz3xw54p/RegPehKSIcC0+l/ElsAplhaH5n
	 bFqoEs+3uWc9qZszXu+lfRGb3PyVzwld2uNTPCRhAIxzfa6+T2sbLsYszR9HP6hN11
	 bm1u04dlQGmUUoA4FEJMJKvUza6DrTJkx79lIAg7J21MlOhBxmEGi4LENVHFYuBMsN
	 0ONUy8Uluvy9Ktos9DzarLJEhu1UcwTPuA4emZBf5jMnQIrY+XvXc6vbPLlUmwai9L
	 Nz2NR3BnFfpMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9263010854B6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354209357.21876.2188110657822340102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecddd6151daa74942c2a41686ae5562d2f337dbd594b83e6cb179aaf853f3d5
Date: Sun, 15 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773542093
