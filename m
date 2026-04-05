Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4C44AEE2
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775414134; cv=none; b=hJa1lIxeFG3l81TGQ2nRiC4yl4EbdQQqzjqEM/G9+Mst6uUzz1WDqb8Pkbrs7EEOk1CJOYLfyZaa+xrLzldnuXqotvNLwDH//HT5bWrj6PwM57ZPnuhba4ZQswwUY3HYDuDFAGDfjR+/S+2pKLdn7dI0TN8DEVfIiLZewTDuXqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775414134; c=relaxed/simple;
	bh=sXDKFYKk9OxpTrPxwV6oF20+5Yd0faRe1l9tIlviJ/E=;
	h=To:Subject:From:Message-Id:Date; b=q/H/T5P50Mj2/xfqTRn6ilTKg/nCjJquEy0eTgv3grVevxle/0zZC2PuQN3VfwMjg2svmS6BQYXfdMhy+cP4+GrbINkUOXsIWSAbiDY2qxIP2AMFYD07xQ+mj6V/pcQquZUFEc+QveGPyzxLZ/5Ced9zrrGuuZNATCIXMDlGbWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBeWX9L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBeWX9L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C403AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775414133;
	bh=sXDKFYKk9OxpTrPxwV6oF20+5Yd0faRe1l9tIlviJ/E=;
	h=To:Subject:From:Date:From;
	b=qBeWX9L+Oni/YUEzAW0zexQgczIIU7PbNhfEMTjXCPSnW+/peWVqYrsyq0VWOdf5Z
	 taR6PlUKNQz7Ea2BxDtKwtU2QzCiY41ydB7qd4aMxL4qIApcw+dQSstgLQubD7sTD8
	 UW12Y2XfHnXPtwY0urXTUKJVUZntGwXWxvl3lvbEvCCmIZbki52rkm5ESuleZoU+0v
	 nq7kksUJdRI+Xn4wRQvZlmT1i5DR7RgAPIjKfRsq8MfoEfK3l0EVR1eP5fcY5aUrqa
	 qOtfzWMC8BJz5oZYDuKNWGBz7vTD44j+c0GZXDMigvFzOyRrOX50qoUm9UulTFdsHy
	 8ILxhodTsjkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE6EE9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541413368.11370.7933309689330439061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b6ee9e331f0040cb5ca9297a555ef56257d810938042bdd2b23ae99f1efda5
Date: Sun, 05 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775414133
