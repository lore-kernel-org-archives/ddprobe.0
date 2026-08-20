Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B73425B0BE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787246434; cv=none; b=ENu5401j3Kax27khg7C/vRkMXK29u3w1y9qGShdMjUQQ+Ap6UeLsgSqZZaIREJnR87nMKaKo6/DpW8VhO9jEeSbcGutYQ4wCO+oxrJKPFtEyvKIYvjXb3WBkeehwMZE7sSTWJHmlMJ+tgbZ+Tw7+fWuTynSGy5100zn5PIAymhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787246434; c=relaxed/simple;
	bh=bEAowqGNyiX6u8wYA/iK6iRuZ99cNikAM2aWKyHq58g=;
	h=To:Subject:From:Message-Id:Date; b=IWkgJHW9PCw5GD+VX7dViRnY6UB7tPvbrMxn5c88EAlZ3kwZgmceI5L4AdWWe7SVBtWre1YOPMK9OskmW97oMKRWKJOTlZ28J7wfavhJfIQFAVaZMJ1g+3yngYQ29lxFqodbhMyozBi1+CNKBgLy+Yx/iJaBRzUg+kNMKAdhA+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra/I3GTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra/I3GTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787246433;
	bh=bEAowqGNyiX6u8wYA/iK6iRuZ99cNikAM2aWKyHq58g=;
	h=To:Subject:From:Date:From;
	b=ra/I3GTpUBkH9WUNqOyzVbzeZqyEvYbq7cThHS+4puwHuGn8L3BEmVeL6vn+xLbYc
	 nBPRReXq3STE0UsbuY0U1+YtAPEXc4P6oLoRO8RQuAu4bfhY7jDQ6lRS8qosfTc2YU
	 Eo+vl/eiOf08rrp9hqmWyVO2sQy/YX/jUogRqHnfL/M7KJ9KIS7WU+HIqR3y4//l7Z
	 wJ2xTLB47KXlJbiValb0vVIMdJmGkl6Q6I8H1x7kv7zCRdZJnYeVKUAZSvWVDRUVi2
	 TXidMyg0lR4Ba22+yvrAB9Zq2VY+ChFy02CtwQ6Czg4WLMFxvvKQeh4d+1GhqrbS9H
	 /YYGaADb/NJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36DC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724643369.23652.3422965530657025038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9962b23a3afef6db09cd0a3087117ce9b19973bc62578d73df06752054050f47
Date: Thu, 20 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787246433
